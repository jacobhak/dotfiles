#!/usr/bin/env bash

# Kill existing session if it exists
tmux has-session -t work 2>/dev/null && tmux kill-session -t work

# Create session and first window (data-pipelines)
tmux new-session -d -s work -n data-pipelines
tmux send-keys -t work:0 "cd ~/code/voi/data-pipelines/transform/" C-m
tmux send-keys -t work:0 "source env/bin/activate" C-m

# Window 2: task-automation (first pane)
tmux new-window -t work:1 -n mmi-re
tmux send-keys -t work:1 "cd ~/code/voi/mmi-re-service/pipelines/" C-m
tmux send-keys -t work:1 "source \$(poetry env info --path)/bin/activate" C-m
tmux send-keys -t work:1 "source ../.pat.rc" C-m

# Split panes in mmi-re window
tmux split-window -h -t work:1
tmux send-keys -t work:1.1 "cd ~/code/voi/mmi-re-service/service/" C-m
tmux send-keys -t work:1.1 "source \$(poetry env info --path)/bin/activate" C-m

tmux split-window -h -t work:1
tmux send-keys -t work:1.2 "cd ~/code/voi/mmi-re-service/service/source/" C-m
tmux send-keys -t work:1.2 "source \$(poetry env info --path)/bin/activate" C-m

# Attach session
tmux attach -t work
