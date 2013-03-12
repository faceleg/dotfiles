#!/bin/bash
DIRECTORY="~/.vim/bundle/vim-ctrlp"

echo "Installing vim-ctrlp"

if [ ! -d "`eval echo ${DIRECTORY//>}`" ]; then
    cd ~/.vim/bundle
    git clone git://github.com/kien/ctrlp.vim.git vim-ctrlp
else
    cd ~/.vim/bundle/vim-ctrlp
    git pull
fi
