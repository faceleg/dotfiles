#!/bin/bash
DIR="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
CP="/bin/cp -vfr"

rm -f ~/.tmux.conf ~/.tmux.conf.local
$CP "$DIR/../configuration/tmux.conf" ~/.tmux.conf
# wget https://raw.githubusercontent.com/faceleg/maglev/master/.tmux.conf -O ~/.tmux.conf

tmux source-file ~/.tmux.conf

