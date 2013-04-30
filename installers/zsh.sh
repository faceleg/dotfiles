#!/bin/bash
DIR="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
CP="/bin/cp -vfr"

printf "\nReplacing zshrc\n"
$CP "$DIR/../configuration/zshrc" ~/.zshrc

DIRECTORY="`eval echo ~/.oh-my-zsh/custom/plugins`"

printf "\nInstalling zsh-syntax-highlighting\n"

if [ ! -d $DIRECTORY ]; then
    mkdir -p $DIRECTORY
fi

ZSH_SYNTAX="$DIRECTORY/zsh-syntax-highlighting"

if [ ! -d "`eval echo ${ZSH_SYNTAX//>}`" ]; then
    cd ~/.oh-my-zsh/custom/plugins
    git clone git://github.com/zsh-users/zsh-syntax-highlighting.git zsh-syntax-highlighting
else
    cd ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
    git pull
fi

