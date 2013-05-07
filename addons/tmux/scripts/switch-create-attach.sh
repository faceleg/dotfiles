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
      tmux attach -t "$1"
    else
      # Create new session, switch to it
      # http://stackoverflow.com/a/16399160/187954
      TMUX=`tmux new-session -d -s "$1"`
      tmux switch-client -t "$1"
    fi
 fi
fi

