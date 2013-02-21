#!/bin/bash
PATHOGEN="~/.vim/autoload/pathogen.vim"

if [ ! -f "`eval echo ${DIRECTORY//>}`" ]; then
    mkdir -p ~/.vim/autoload ~/.vim/bundle; \
    curl -Sso ~/.vim/autoload/pathogen.vim \
        https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim
fi
