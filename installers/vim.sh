#!/bin/bash

set -e 
set -x

DIR="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
CP="/bin/cp -vfr"

# Neovim
mkdir -p ${XDG_CONFIG_HOME:=$HOME/.config}

VIM_DIR_NAME="nvim"

echo "mkdir $XDG_CONFIG_HOME/$VIM_DIR_NAME/config"
mkdir -p "$XDG_CONFIG_HOME/$VIM_DIR_NAME/config"

# Install Vim Plug
curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

if ! command -v cfn-lint &> /dev/null
then
    echo "Installing cfn-lint"
    brew install cfn-lint
    exit
fi

$CP "$DIR/../configuration/coc-settings.json" "$XDG_CONFIG_HOME/nvim/coc-settings.json"

$CP "$DIR/../configuration/init.vim" "$XDG_CONFIG_HOME/nvim/init.vim"

$CP "$DIR/../configuration/plugins.vim" "$XDG_CONFIG_HOME/$VIM_DIR_NAME/config/plugins.vim"
$CP "$DIR/../configuration/plugins.config.vim" "$XDG_CONFIG_HOME/$VIM_DIR_NAME/config/plugins.config.vim"
$CP "$DIR/../configuration/plugins.config.coc.vim" "$XDG_CONFIG_HOME/$VIM_DIR_NAME/config/plugins.config.coc.vim"
