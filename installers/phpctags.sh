#!/bin/bash
DIR="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
CP="/bin/cp -vfr"

printf "\nInstalling phpctags\n"

rm -rf ~/.phpctags

git clone https://github.com/techlivezheng/phpctags.git ~/.phpctags
cd ~/.phpctags

make

