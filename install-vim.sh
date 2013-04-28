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
$INSTALLER pangloss vim-javascript
$INSTALLER sickill vim-sunburst

# https://github.com/jelera/vim-javascript-syntax
echo "Installing javascript syntax"
mkdir -p ~/.vim/syntax
curl -0 https://raw.github.com/jelera/vim-javascript-syntax/master/syntax/javascript.vim > ~/.vim/syntax/javascript.vim

mkdir -p ~/.vim/ftdetect
curl -0 https://raw.github.com/jelera/vim-javascript-syntax/master/ftdetect/javascript.vim > ~/.vim/ftdetect/javascript.vim
echo ""

