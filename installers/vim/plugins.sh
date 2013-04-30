#!/bin/bash
DIR="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
CP="/bin/cp -vfr"

printf "\nInstalling vim plugins\n"

mkdir -p ~/.vim/plugin
PLUGINS_DIR="`eval echo ${DIR//>}/../../addons/vim/plugin`"
$CP $PLUGINS_DIR ~/.vim

printf "\n"
