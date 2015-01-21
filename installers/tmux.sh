#!/bin/bash
DIR="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
CP="/bin/cp -vfr"

mkdir -p ~/.tmux/plugins

printf "
(Re)Installing TMP
"
TMUX_PLUGINS="`eval echo ~/.tmux/plugins/`"
if [ -d $TMUX_PLUGINS ]; then
    rm -rf $TMUX_PLUGINS/tpm
else
    mkdir -p $TMUX_PLUGINS
fi

git clone https://github.com/tmux-plugins/tpm $TMUX_PLUGINS/tpm

rm -f ~/.tmux.conf
$CP "$DIR/../configuration/tmux.conf" ~/.tmux.conf

# Install tmux themes
rm -rf ~/.tmux-themes

# Create tmux-themes directory structure & copy files
$CP "$DIR/../addons/tmux/themes/" ~/.tmux-themes

chmod 755 ~/.tmux-themes
find ~/.tmux-themes -type d -exec chmod 755 {} \;
find ~/.tmux-themes -type f -exec chmod 644 {} \;

tmux source-file ~/.tmux.conf

