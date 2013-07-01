#!/bin/bash
DIRECTORY="`eval echo ~/.vim/bundle/neobundle.vim`"

if [ ! -d "$DIRECTORY" ]; then
    printf "\nInstalling neobundle\n"
    mkdir -p ~/.vim/bundle "$DIRECTORY"; \
    git clone https://github.com/Shougo/neobundle.vim.git "$DIRECTORY"
fi

