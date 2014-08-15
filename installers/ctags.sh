#!/bin/bash
# Install ctags patched to provide css support

DIR="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

printf "\nInstalling ctags\n"

rm -rfv ~/.ctags-src
mkdir -vp ~/.ctags-src

cd ~/.ctags-src

# Clone the deploy branch
git clone -b deploy https://github.com/fishman/ctags.git ~/.ctags-src

# Configure & build
autoheader
autoconf
./configure

make
sudo make install
sudo ln -s -f /usr/local/bin/ctags /usr/bin/ctags-exuberant

# brew tap kopischke/ctags
# brew install ctags-fishman --HEAD

# brew install ctags --HEAD
# brew link --overwrite ctags

