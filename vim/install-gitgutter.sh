#!/bin/bash
DIRECTORY="~/.vim/bundle/vim-gitgutter"

echo "Installing vim-gitgutter"

if [ ! -d "`eval echo ${DIRECTORY//>}`" ]; then
    cd ~/.vim/bundle
    git clone https://github.com/airblade/vim-gitgutter.git
else
    cd ~/.vim/bundle/vim-gitgutter
    git pull
fi
