#!/bin/bash
DIR="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
CP="/bin/cp -vfr"

# Vim
$CP "$DIR/../configuration/vimrc" ~/.vimrc

# Neovim
mkdir -p ${XDG_CONFIG_HOME:=$HOME/.config}
mkdir -p "$XDG_CONFIG_HOME/nvim"
$CP "$DIR/../configuration/vimrc" "$XDG_CONFIG_HOME/nvim/init.vim"

