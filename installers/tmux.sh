#!/bin/bash
DIR="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
CP="/bin/cp -vfr"

brew install reattach-to-user-namespace

rm -f ~/.tmux.conf ~/.tmux.conf.local
$CP "$DIR/../configuration/tmux.conf" ~/.tmux.conf

mkdir -p ~/.tmux

# Script for selecting tmux pane using fzf
curl -v https://gist.githubusercontent.com/muralisc/d1ed7226533ab23e4e1e/raw/1291524f073ac742ca9cba211d229bb457acf90c/ftpane > ~/.tmux/ftpane.sh
chmod +x ~/.tmux/ftpane.sh

tmux source-file ~/.tmux.conf
