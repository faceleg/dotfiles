#!/bin/bash
DIRECTORY="~/.oh-my-zsh/custom/plugins"
echo $DIRECTORY

if [ ! -d "`eval echo ${DIRECTORY//>}`" ]; then
    mkdir -p $DIRECTORY
fi

ZSH_SYNTAX="$DIRECTORY/zsh-syntax-highlighting"

echo "Installing zsh-syntax-highlighting"

if [ ! -d "`eval echo ${ZSH_SYNTAX//>}`" ]; then
    cd ~/.oh-my-zsh/custom/plugins
    git clone git://github.com/zsh-users/zsh-syntax-highlighting.git zsh-syntax-highlighting
else
    cd ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
    git pull
fi

