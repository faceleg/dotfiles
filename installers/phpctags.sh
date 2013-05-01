#!/bin/bash
DIR="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
CP="/bin/cp -vfr"

printf "\nInstalling phpctags\n"

rm -rf ~/.phpctags

$CP "$DIR/../addons/phpctags" ~/.phpctags

cd ~/.phpctags

composer install

