#!/bin/bash

DIR="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
CP="/bin/cp -vfr"

# Copy basic config files
for FILE in .zshrc .tmux.conf .vimrc; do
    rm -v "`eval echo ~/${FILE//>}`"
    $CP "$DIR/$FILE" ~/
done;

# Remove old tmux config
rm -rf ~/.tmux-themes

# Create tmux-themes directory structure & copy files
$CP "$DIR/tmux/themes/" ~/.tmux-themes

chmod 755 ~/.tmux-themes
find ~/.tmux-themes -type d -exec chmod 755 {} \;
find ~/.tmux-themes -type f -exec chmod 644 {} \;

./configure-git.sh
./install-vim.sh

exec $SHELL -l

tmux source-file ~/.tmux.conf
