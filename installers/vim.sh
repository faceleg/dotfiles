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

# Install patched version of Ctags for PHP if not present
CTAGS_VERSION=$(ctags --version)
if [[ ! $CTAGS_VERSION =~ 'Exuberant Ctags Development' ]]; then
    mkdir -p ~/.vim/build
    cd ~/.vim/build
    svn --non-interactive --trust-server-cert --quiet checkout https://svn.code.sf.net/p/ctags/code/trunk ~/.vim/build/ctags-trunk
    cd ~/.vim/build/ctags-trunk
    wget --quiet https://gist.github.com/complex857/5693196/raw/14a770b436b5116eb22ec65492d8c0e8a4271210/0000-PHP-parser-rewrite-full-string-parameters.patch
    patch -p0 --quiet -i 0000-PHP-parser-rewrite-full-string-parameters.patch
    autoconf
    autoheader
    ./configure
    make
    sudo make install
fi

# CSSLint for Syntastic
command_exists () {
    type "$1" &> /dev/null ;
}

if ! command_exists csslint; then
    sudo npm install -g csslint
fi

