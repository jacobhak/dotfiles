#!/usr/bin/env bash
# Save Claude session IDs per tmux pane before shutdown/reboot.
# Output: ~/.claude-pane-sessions, one line per pane: "<cwd> <session-id>"
# Multiple panes in the same dir are saved in order, consumed in order on restore.
# Uses <config-dir>/sessions/<pid>.json written by Claude Code for each running
# session, across every Claude account config dir (~/.claude, ~/.claude-private, ...).

set -eo pipefail

SAVEFILE="$HOME/.claude-pane-sessions"
> "$SAVEFILE"

tmux list-sessions > /dev/null 2>&1 || { echo "tmux not running, nothing to save"; exit 0; }

# --- Build pid -> session-id map from */sessions/<pid>.json across all account dirs ---
declare -A pid_to_session

for config_dir in "$HOME/.claude" "$HOME/.claude-private"; do
    for session_file in "$config_dir/sessions/"*.json; do
        [ -f "$session_file" ] || continue
        pid=$(basename "$session_file" .json)
        session_id=$(python3 -c "
import json, sys
with open('$session_file') as f:
    print(json.load(f)['sessionId'])
" 2>/dev/null) || continue
        pid_to_session["$pid"]="$session_id"
    done
done

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
