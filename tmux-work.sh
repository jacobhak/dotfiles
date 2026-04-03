#!/usr/bin/env bash

set -euo pipefail

session_name="${1:-work}"

if tmux has-session -t "$session_name" 2>/dev/null; then
    exec tmux attach-session -t "$session_name"
fi

if tmux list-sessions >/dev/null 2>&1; then
    exec tmux attach-session
fi

exec tmux new-session -s "$session_name"
