#!/bin/bash
DIR="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
CP="/bin/cp -vfr"

#$CP "$DIR/../configuration/ctags" ~/.ctags
$CP "$DIR/../configuration/vimrc" ~/.vimrc

"$DIR/vim/neobundle.sh"

if [ ! -f ~/.vim/syntax/javascript.vim ]; then
    # https://github.com/jelera/vim-javascript-syntax
    printf "\nInstalling javascript syntax\n"
    mkdir -p ~/.vim/syntax
    curl -0 https://raw.github.com/jelera/vim-javascript-syntax/master/syntax/javascript.vim > ~/.vim/syntax/javascript.vim

    mkdir -p ~/.vim/ftdetect
    curl -0 https://raw.github.com/jelera/vim-javascript-syntax/master/ftdetect/javascript.vim > ~/.vim/ftdetect/javascript.vim
fi

# CSSLint for Syntastic
command_exists () {
    type "$1" &> /dev/null ;
}

if ! command_exists csslint; then
    sudo npm install -g csslint
fi

