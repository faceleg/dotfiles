#!/bin/bash
DIR="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
CP="/bin/cp -vfr"

# Neovim
mkdir -p ${XDG_CONFIG_HOME:=$HOME/.config}

VIM_DIR_NAME="nvim"

echo "mkdir $XDG_CONFIG_HOME/$VIM_DIR_NAME/config"
mkdir -p "$XDG_CONFIG_HOME/$VIM_DIR_NAME/config"

$CP "$DIR/../configuration/vimrc" "$XDG_CONFIG_HOME/nvim/init.vim"
if [ ! -f  "$XDG_CONFIG_HOME/nvim/github.vim" ]; then
    $CP "$DIR/../configuration/vimrc.github.vim" "$XDG_CONFIG_HOME/$VIM_DIR_NAME/config/github.vim"
fi

$CP "$DIR/../configuration/vimrc.plugins.vim" "$XDG_CONFIG_HOME/$VIM_DIR_NAME/config/plugins.vim"
