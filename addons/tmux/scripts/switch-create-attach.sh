#!/usr/bin/env bash
set -e

# Switch to previous session if no session name is provided
# https://gist.github.com/mislav/4525198
if [[ -z $1 ]]; then
  tmux switch-client -l
else
  # If there is a session with this name, attach or switch to it
  if tmux has-session -t "$1" 2>/dev/null; then
    [[ -z "$TMUX" ]] && tmux attach -t "$1" || tmux switch-client -t "$1"
  # Otherwise create or attach it
  else
    if [[ -z "$TMUX" ]]; then
      tmux new-session -s "$1"
    else 
      tmux attach -t "$1"
    fi
 fi
fi

