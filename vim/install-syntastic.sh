#!/bin/bash
DIRECTORY="~/.vim/bundle/vim-syntastic"

echo "Installing vim-syntastic"

if [ ! -d "`eval echo ${DIRECTORY//>}`" ]; then
    cd ~/.vim/bundle
    git clone https://github.com/scrooloose/syntastic.git vim-syntastic
else
    cd ~/.vim/bundle/vim-syntastic
    git pull
fi
