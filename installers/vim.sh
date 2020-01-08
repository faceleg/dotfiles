#!/bin/bash
DIR="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
CP="/bin/cp -vfr"

# Neovim
mkdir -p ${XDG_CONFIG_HOME:=$HOME/.config}

VIM_DIR_NAME="nvim"

echo "mkdir $XDG_CONFIG_HOME/$VIM_DIR_NAME/config"
mkdir -p "$XDG_CONFIG_HOME/$VIM_DIR_NAME/config"

printf "\nInstalling Dein"
DEIN="`eval echo ~/.cache/dein/`"
if [ -d "$DEIN" ]; then
  echo "Already installed"
else
  curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
  sh ./installer.sh ~/.cache/dein
  rm installer.sh
fi

$CP "$DIR/../configuration/init.vim" "$XDG_CONFIG_HOME/nvim/init.vim"

$CP "$DIR/../configuration/plugins.vim" "$XDG_CONFIG_HOME/$VIM_DIR_NAME/config/plugins.vim"
$CP "$DIR/../configuration/plugins.config.vim" "$XDG_CONFIG_HOME/$VIM_DIR_NAME/config/plugins.config.vim"
