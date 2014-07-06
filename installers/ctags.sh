#!/bin/bash
# Install ctags patched to provide css support

DIR="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

printf "\nInstalling ctags\n"

brew tap kopischke/ctags
brew install ctags-fishman --HEAD

