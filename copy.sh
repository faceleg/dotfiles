#!/bin/bash
for FILE in .zshrc .tmux.conf .vimrc; do
    cp $FILE ~/
done;

exec $SHELL -l

