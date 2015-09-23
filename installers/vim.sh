#!/bin/bash
DIR="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
CP="/bin/cp -vfr"

$CP "$DIR/../configuration/vimrc" ~/.vimrc
$CP ~/.vimrc ~/.nvimrc

