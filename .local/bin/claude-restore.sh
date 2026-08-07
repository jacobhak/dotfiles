#!/usr/bin/env bash
# Called by tmux-resurrect instead of `claude` on session restore.
# Resumes the saved session for this pane's working directory, falling
# back to --continue (most recent) if no saved session is found.

SAVEFILE="$HOME/.claude-pane-sessions"
LOCKFILE="$SAVEFILE.lock"
RESULT_FILE=$(mktemp)
CWD=$(pwd)

ACCOUNT_DIR=$(claude-resolve-account "$CWD")
if [ -n "$ACCOUNT_DIR" ]; then
    export CLAUDE_CONFIG_DIR="$ACCOUNT_DIR"
fi

if [ ! -f "$SAVEFILE" ]; then
    exec claude --continue
fi

# Lock, find + consume first matching session, write result to temp file
(
    flock 9

    SESSION_ID=$(grep "^${CWD} " "$SAVEFILE" 2>/dev/null | head -1 | awk '{print $2}')

    if [ -n "$SESSION_ID" ]; then
        # Consume this entry so the next pane in the same dir gets a different session
        tmp=$(mktemp)
        grep -v "^${CWD} ${SESSION_ID}$" "$SAVEFILE" > "$tmp" && mv "$tmp" "$SAVEFILE"
        echo "$SESSION_ID"
    fi
) 9>"$LOCKFILE" > "$RESULT_FILE"

SESSION_ID=$(cat "$RESULT_FILE")
rm -f "$RESULT_FILE"

if [ -n "$SESSION_ID" ]; then
    exec claude --resume "$SESSION_ID"
else
    exec claude --continue
fi
