#!/bin/bash
DIR="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

printf "\nInstalling ctags\n"

if hash ctags 2>/dev/null; then
    printf "\nCTags is installed, remove it before attempting to install again\n"
    exit 1
fi

rm -rf ~/.ctags-src
mkdir -p ~/.ctags-src

cd ~/.ctags-src

git clone -b deploy https://github.com/fishman/ctags.git ~/.ctags-src

./configure && make && sudo make install

