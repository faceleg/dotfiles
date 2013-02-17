#!/bin/bash
DIR="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
CP="/bin/cp -vfr"
rm -rf ~/.tmux-theme ~/.tmux.conf

# Copy basic config files
for FILE in .zshrc .tmux.conf .vimrc; do
    $CP "$DIR/$FILE" ~/
done;

# Create tmux-themes directory structure & copy files
mkdir -v ~/.tmux-themes

$CP "$DIR/tmux/themes/" ~/.tmux-themes/
echo "$CP $DIR/tmux/themes/ ~/.tmux-themes/"

chmod 755 ~/.tmux-themes
find ~/.tmux-themes -type d -exec chmod 755 {} \;
find ~/.tmux-themes -type f -exec chmod 644 {} \;

# Git config
git config --global user.name "Michael Robinson"
git config --global user.email mike@pagesofinterest.net
git config --global --add color.ui true

exec $SHELL -l

tmux source-file ~/.tmux.conf
