#!/bin/bash
DIRECTORY="~/.vim/bundle/vim-nerdtree"

echo "Installing vim-nerdtree"

if [ ! -d "`eval echo ${DIRECTORY//>}`" ]; then
    cd ~/.vim/bundle
    git clone https://github.com/scrooloose/nerdtree.git vim-nerdtree
else
    cd ~/.vim/bundle/vim-nerdtree
    git pull
fi
