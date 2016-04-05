#!/bin/bash
DIR="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
CP="/bin/cp -vfr"

printf "\nInstalling zgen\n"
ANTIGEN="`eval echo ~/.zgen/`"
if [ -d "$ANTIGEN/.git" ]; then
    cd $ANTIGEN
    git pull
    rm -rf "$ANTIGEN/plugins/*"
else
    rm -rf $ANTIGEN
    git clone https://github.com/tarjoilija/zgen.git $ANTIGEN
fi

printf "\nReplacing zshrc\n"
rm -fv ~/.zshrc
$CP "$DIR/../configuration/zshrc" ~/.zshrc

exists() {
    command -v "$1" >/dev/null 2>&1
}

if ! exists grc; then
    brew install grc
fi
