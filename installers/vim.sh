#!/bin/bash
DIR="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
CP="/bin/cp -vfr"

"$DIR/vim/pathogen.sh"
"$DIR/vim/plugins.sh"

printf "\nReplacing ctags and vimrc\n"
$CP "$DIR/../configuration/ctags" ~/.ctags
$CP "$DIR/../configuration/vimrc" ~/.vimrc

printf "\nInstalling vim bundles\n"

INSTALLER="$DIR/vim/bundle.sh"
$INSTALLER airblade vim-gitgutter
$INSTALLER tpope vim-fugitive
$INSTALLER tpope vim-surround
$INSTALLER tpope vim-unimpaired
$INSTALLER tpope vim-haml
$INSTALLER Shougo neocomplcache
$INSTALLER kien ctrlp.vim
$INSTALLER scrooloose syntastic
$INSTALLER scrooloose nerdtree
$INSTALLER scrooloose nerdcommenter
$INSTALLER terryma vim-multiple-cursors
$INSTALLER majutsushi tagbar
$INSTALLER xolox vim-easytags
$INSTALLER ap vim-css-color
$INSTALLER SirVer ultisnips
$INSTALLER JazzCore neocomplcache-ultisnips
$INSTALLER tristen vim-sparkup
$INSTALLER Townk vim-autoclose                      # https://github.com/Townk/vim-autoclose
$INSTALLER vim-scripts closetag.vim                 # https://github.com/vim-scripts/closetag.vim
$INSTALLER vim-scripts phpfolding.vim
$INSTALLER vim-scripts YankRing.vim
$INSTALLER Lokaltog vim-powerline
$INSTALLER Lokaltog vim-easymotion
$INSTALLER tobyS pdv
$INSTALLER pangloss vim-javascript
$INSTALLER sickill vim-sunburst
$INSTALLER othree javascript-libraries-syntax.vim
$INSTALLER hlissner vim-multiedit
$INSTALLER Valloric vim-indent-guides
$INSTALLER Valloric MatchTagAlways
$INSTALLER flazz vim-colorschemes
$INSTALLER sjl gundo.vim
$INSTALLER heavenshell vim-jsdoc
$INSTALLER jeetsukumaran vim-buffergator
$INSTALLER plasticboy vim-markdown

if [[ -d "`eval echo ~/.phpctags/vendor/techlivezheng/phpctags`" ]]; then
    # Use phpctags.sh installer first
    $INSTALLER techlivezheng tagbar-phpctags
fi

# https://github.com/jelera/vim-javascript-syntax
printf "\nInstalling javascript syntax\n"
mkdir -p ~/.vim/syntax
curl -0 https://raw.github.com/jelera/vim-javascript-syntax/master/syntax/javascript.vim > ~/.vim/syntax/javascript.vim

mkdir -p ~/.vim/ftdetect
curl -0 https://raw.github.com/jelera/vim-javascript-syntax/master/ftdetect/javascript.vim > ~/.vim/ftdetect/javascript.vim

printf "\nInstalling jsctags\n"
JSCTAGS_DIR=/usr/local/jsctags
if [[ ! -d $JSCTAGS_DIR ]]; then
    cd /usr/local
    sudo git clone --recursive https://github.com/faceleg/doctorjs.git jsctags
    cd jsctags
    sudo make install
fi

