#!/bin/bash
DIR="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
CP="/bin/cp -vfr"

mkdir -p ~/.tmux/plugins

printf "
(Re)Installing TMP
"
TMUX_PLUGINS="`eval echo ~/.tmux/plugins`"
if [ -d $TMUX_PLUGINS ]; then
    rm -rf $TMUX_PLUGINS/tpm
else
    mkdir -p $TMUX_PLUGINS
fi

git clone https://github.com/tmux-plugins/tpm $TMUX_PLUGINS/tpm

rm -f ~/.tmux.conf ~/.tmux.conf.local
$CP "$DIR/../configuration/tmux.conf.local" ~/.tmux.conf.local
wget https://raw.githubusercontent.com/faceleg/maglev/master/.tmux.conf -O ~/.tmux.conf

tmux source-file ~/.tmux.conf

