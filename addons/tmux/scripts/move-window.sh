#!/bin/bash
if [ $# -ne 1 -o -z "$1" ]; then
    exit 1
fi
if tmux list-windows | grep -q "^$1:"; then
    tmux swap-window -t $1
else
    tmux move-window -t $1
fi
