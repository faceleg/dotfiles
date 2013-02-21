#!/bin/bash
DIRECTORY="~/.vim/bundle/vim-fugitive"

if [ ! -d "`eval echo ${DIRECTORY//>}`" ]; then
    cd ~/.vim/bundle
    git clone git://github.com/tpope/vim-fugitive.git
fi
