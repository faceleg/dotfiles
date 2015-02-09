#!/bin/bash
DIR="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
CP="/bin/cp -vfr"

printf "\nInstalling/Updating Antigen\n"
ANTIGEN="`eval echo ~/.antigen/`"
if [ -d "$ANTIGEN/.git" ]; then
    cd $ANTIGEN
    git pull
else
    rm -rf $ANTIGEN
    git clone https://github.com/zsh-users/antigen.git $ANTIGEN
fi

printf "\nReplacing zshrc\n"
rm -fv ~/.zshrc
$CP "$DIR/../configuration/zshrc" ~/.zshrc

