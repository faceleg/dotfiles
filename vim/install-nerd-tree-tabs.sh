#!/bin/bash
DIRECTORY="~/.vim/bundle/vim-nerdtree-tabs"

echo "Installing vim-nerdtree-tabs"

if [ ! -d "`eval echo ${DIRECTORY//>}`" ]; then
    cd ~/.vim/bundle
    git clone https://github.com/scrooloose/nerdtree-tabs.git vim-nerdtree-tabs
else
    cd ~/.vim/bundle/vim-nerdtree-tabs
    git pull
fi
