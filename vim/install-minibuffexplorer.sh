#!/bin/bash
DIRECTORY="~/.vim/bundle/vim-minibufexpl"

echo "Installing vim-minibufexpl"

if [ ! -d "`eval echo ${DIRECTORY//>}`" ]; then
    cd ~/.vim/bundle
    git clone git://github.com/fholgado/minibufexpl.vim.git vim-minibufexpl
else
    cd ~/.vim/bundle/vim-minibufexpl
    git pull
fi
