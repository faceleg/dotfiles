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
$INSTALLER terryma vim-multiple-cursors
