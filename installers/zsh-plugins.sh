#!/bin/bash
DIR="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

DIRECTORY="`eval echo ~/.oh-my-zsh/custom/plugins`"

echo "Installing zsh-syntax-highlighting"

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

