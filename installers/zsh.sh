#!/bin/bash
DIR="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
CP="/bin/cp -vfr"

printf "\nInstalling / updating Antigen\n"
ANTIGEN="`eval echo ~/.antigen/`"
if [ -d $ANTIGEN ]; then
    rm -rf $ANTIGEN
fi

mkdir -p $ANTIGEN

curl -L https://raw.githubusercontent.com/zsh-users/antigen/master/antigen.zsh > "$ANTIGEN/antigen.zsh"

printf "\nReplacing zshrc\n"
rm -f ~/.zshrc
$CP "$DIR/../configuration/zshrc" ~/.zshrc

