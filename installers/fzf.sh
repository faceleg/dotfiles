#!/bin/bash
DIR="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# fzf
printf "\nInstalling fzf\n"
FZF="`eval echo ~/.fzf/`"
if [ -d "$FZF/.git" ]; then
    cd $FZF
    git pull
else
    rm -rf $FZF
    git clone --depth 1 https://github.com/junegunn/fzf.git $FZF
fi

"$FZF/install"

