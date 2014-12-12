#!/bin/bash
DIR="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
CP="/bin/cp -vfr"

$CP "$DIR/../configuration/vimrc" ~/.vimrc

# CSSLint for Syntastic
command_exists () {
    type "$1" &> /dev/null ;
}

if ! command_exists csslint; then
    sudo npm install -g csslint
fi

