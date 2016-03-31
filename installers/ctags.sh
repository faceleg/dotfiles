#!/bin/bash

DIR="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

printf "\nInstalling ctags configuration\n"

rm -rfv ~/.ctags

cp -v "$DIR/../configuration/ctags" ~/.ctags
