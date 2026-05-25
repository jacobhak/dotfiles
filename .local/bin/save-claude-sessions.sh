#!/usr/bin/env bash
# Save Claude session IDs per tmux pane before shutdown/reboot.
# Output: ~/.claude-pane-sessions, one line per pane: "<cwd> <session-id>"
# Multiple panes in the same dir are saved in order, consumed in order on restore.

set -euo pipefail

SAVEFILE="$HOME/.claude-pane-sessions"
> "$SAVEFILE"

pgrep -x tmux > /dev/null 2>&1 || { echo "tmux not running, nothing to save"; exit 0; }

# --- Find all processes with a Claude session file open ---
# Returns lines of: <pid> <session-id>

declare -A pid_to_session

if [[ "$OSTYPE" == "darwin"* ]]; then
    while read -r pid filepath; do
        session_id=$(basename "$filepath" .jsonl)
        pid_to_session["$pid"]="$session_id"
    done < <(
        lsof 2>/dev/null \
            | grep "\.claude/projects/.*\.jsonl" \
            | awk '{print $2, $NF}'
    )
else
    for fd_link in /proc/[0-9]*/fd/*; do
        target=$(readlink "$fd_link" 2>/dev/null) || continue
        [[ "$target" == *".claude/projects/"*".jsonl" ]] || continue
        pid=$(echo "$fd_link" | cut -d/ -f3)
        session_id=$(basename "$target" .jsonl)
        pid_to_session["$pid"]="$session_id"
    done
fi

if [ ${#pid_to_session[@]} -eq 0 ]; then
    echo "No active Claude sessions found"
    exit 0
fi

# --- Walk up process tree to find if pane_pid is an ancestor of a given pid ---
is_descendant() {
    local ancestor=$1 pid=$2
    while [ "$pid" -gt 1 ] 2>/dev/null; do
        ppid=$(ps -o ppid= -p "$pid" 2>/dev/null | tr -d ' ')
        [[ -z "$ppid" || "$ppid" == "0" ]] && return 1
        [ "$ppid" = "$ancestor" ] && return 0
        pid=$ppid
    done
    return 1
}

# --- Match each tmux pane to a Claude session ---
while read -r pane_pid cwd; do
    for pid in "${!pid_to_session[@]}"; do
        if is_descendant "$pane_pid" "$pid"; then
            echo "$cwd ${pid_to_session[$pid]}" >> "$SAVEFILE"
            break
        fi
    done
done < <(tmux list-panes -a -F "#{pane_pid} #{pane_current_path}" 2>/dev/null)

count=$(wc -l < "$SAVEFILE" | tr -d ' ')
echo "Saved $count Claude session(s) to $SAVEFILE"
