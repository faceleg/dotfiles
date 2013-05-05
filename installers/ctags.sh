#!/bin/bash
# Install ctags patched to provide css support

DIR="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

printf "\nInstalling ctags\n"

# Don't attempt to install if ctags exists already
if hash ctags 2>/dev/null; then
    printf "\nCTags is installed, remove it before attempting to install again\n"
    exit 1
fi

rm -rf ~/.ctags-src
mkdir -p ~/.ctags-src

cd ~/.ctags-src

# Clone the deploy branch
git clone -b deploy https://github.com/fishman/ctags.git ~/.ctags-src

# Configure & build
./configure && make && sudo make install && sudo ln -s -f /usr/local/bin/ctags /usr/bin/ctags-exuberant

