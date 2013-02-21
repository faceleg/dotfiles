#!/bin/bash
DIRECTORY="~/.vim/bundle/neocomplcache"

if [ ! -d "`eval echo ${DIRECTORY//>}`" ]; then
    cd ~/.vim/bundle
    https://github.com/Shougo/neocomplcache.git
fi
