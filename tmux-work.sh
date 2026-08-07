#!/usr/bin/env bash

set -euo pipefail

session_name='work'

if tmux has-session -t "$session_name" 2>/dev/null; then
    exec tmux attach-session -t "$session_name"
fi

exec tmux new-session -s "$session_name"
