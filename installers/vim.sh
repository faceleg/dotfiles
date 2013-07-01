#!/bin/bash
DIR="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
CP="/bin/cp -vfr"

printf "\nReplacing ctags and vimrc configuration files\n"
$CP "$DIR/../configuration/ctags" ~/.ctags
$CP "$DIR/../configuration/vimrc" ~/.vimrc

"$DIR/vim/pathogen.sh"

printf "\nInstalling vim bundles\n"

INSTALLER="$DIR/vim/bundle.sh"

# Themes
#$INSTALLER flazz vim-colorschemes
$INSTALLER sickill vim-sunburst

# Syntax
#$INSTALLER faceleg php.vim-html-enhanced            # https://github.com/faceleg/php.vim-html-enhanced
#$INSTALLER vim-scripts phpfolding.vim               # git://github.com/vim-scripts/phpfolding.vim.git
$INSTALLER ap vim-css-color
$INSTALLER Glench Vim-Jinja2-Syntax                 # https://github.com/Glench/Vim-Jinja2-Syntax
$INSTALLER hail2u vim-css3-syntax                   # https://github.com/hail2u/vim-css3-syntax
$INSTALLER othree html5.vim                         # https://github.com/othree/html5.vim
$INSTALLER othree javascript-libraries-syntax.vim   # https://github.com/othree/javascript-libraries-syntax.vim
$INSTALLER pangloss vim-javascript
$INSTALLER plasticboy vim-markdown
$INSTALLER rodjek vim-puppet                        # https://github.com/rodjek/vim-puppet
$INSTALLER tobyS vmustache
$INSTALLER tpope vim-haml
$INSTALLER vim-scripts jumphl.vim                   # https://github.com/vim-scripts/jumphl.vim

# Documentation
#$INSTALLER tobyS pdv
$INSTALLER heavenshell vim-jsdoc
$INSTALLER mudpile45 vim-phpdoc                     # https://github.com/mudpile45/vim-phpdoc

# Plugins
#$INSTALLER airblade vim-gitgutter                   # Disabled as seems slow
#$INSTALLER JazzCore neocomplcache-ultisnips
#$INSTALLER nelstrom vim-visual-star-search          # https://github.com/nelstrom/vim-visual-star-search
#$INSTALLER Shougo neocomplcache
#$INSTALLER SirVer ultisnips                         # https://github.com/SirVer/ultisnips
#$INSTALLER tpope vim-commentary                     # https://github.com/tpope/vim-commentary
$INSTALLER AndrewRadev splitjoin.vim                # https://github.com/AndrewRadev/splitjoin.vim
$INSTALLER hlissner vim-multiedit
$INSTALLER inkarkat closetag.vim                    # https://github.com/inkarkat/closetag.vim
$INSTALLER jeetsukumaran vim-buffergator
$INSTALLER kien ctrlp.vim
$INSTALLER Lokaltog vim-easymotion
$INSTALLER Lokaltog vim-powerline
$INSTALLER majutsushi tagbar
$INSTALLER mileszs ack.vim                          # https://github.com/mileszs/ack.vim
$INSTALLER scrooloose nerdcommenter                 # https://github.com/scrooloose/nerdcommenter
$INSTALLER scrooloose nerdtree
$INSTALLER scrooloose syntastic
$INSTALLER sinisterstuf vim-sparkup                 # https://github.com/sinisterstuf/vim-sparkup
$INSTALLER sjl gundo.vim
$INSTALLER terryma vim-expand-region                # https://github.com/terryma/vim-expand-region
$INSTALLER terryma vim-multiple-cursors
$INSTALLER terryma vim-smooth-scroll                # https://github.com/terryma/vim-smooth-scroll
$INSTALLER Townk vim-autoclose                      # https://github.com/Townk/vim-autoclose
$INSTALLER tpope vim-eunuch                         # https://github.com/tpope/vim-eunuch
$INSTALLER tpope vim-fugitive
$INSTALLER tpope vim-repeat                         # https://github.com/tpope/vim-repeat
$INSTALLER tpope vim-surround
$INSTALLER tpope vim-unimpaired
$INSTALLER tsaleh vim-matchit                       # https://github.com/tsaleh/vim-matchit
$INSTALLER Valloric MatchTagAlways                  # https://github.com/Valloric/MatchTagAlways
$INSTALLER Valloric YouCompleteMe
$INSTALLER vim-scripts YankRing.vim
$INSTALLER xolox vim-easytags                       # https://github.com/xolox/vim-easytags
$INSTALLER xolox vim-misc                           # https://github.com/xolox/vim-misc

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

cd ~/.vim/bundle/YouCompleteMe
./install.sh --clang-completer

# CSSLint for Syntastic
sudo npm install -g csslint

