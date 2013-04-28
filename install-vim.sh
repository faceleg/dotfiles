#!/bin/bash

echo "Installing vim plugins"

vim/install-pathogen.sh

INSTALLER=./vim/installer.sh
$INSTALLER airblade vim-gitgutter
$INSTALLER tpope vim-fugitive
$INSTALLER Shougo neocomplcache
$INSTALLER fholgado minibufexpl.vim
$INSTALLER kien ctrlp.vim
$INSTALLER scrooloose syntastic
$INSTALLER scrooloose nerdtree
$INSTALLER scrooloose nerdcommenter
$INSTALLER terryma vim-multiple-cursors
$INSTALLER majutsushi tagbar
# requres https://github.com/techlivezheng/phpctags
#$INSTALLER techlivezheng tagbar-phpctags 
$INSTALLER xolox vim-easytags
$INSTALLER skammer vim-css-color
$INSTALLER SirVer ultisnips
$INSTALLER JazzCore neocomplcache-ultisnips
$INSTALLER tristen vim-sparkup
$INSTALLER Townk vim-autoclose
$INSTALLER Lokaltog vim-powerline
$INSTALLER tobyS pdv

