#!/bin/bash
DIRECTORY="~/.vim/bundle/neocomplcache"

if [ ! -d "`eval echo ${DIRECTORY//>}`" ]; then
    cd ~/.vim/bundle
    git clone https://github.com/Shougo/neocomplcache.git
else
    cd ~/.vim/bundle/neocomplcache
    git pull
fi
