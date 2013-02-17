#!/bin/bash
DIR="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
CP="/bin/cp -vfr"
rm -rf ~/.tmux-theme ~/.tmux.conf

# Copy basic config files
for FILE in .zshrc .tmux.conf .vimrc; do
    $CP "$DIR/$FILE" ~/
done;


rm -rf /usr/local/bin/basic-cpu-and-memory.tmux
$CP "$DIR/tmux/scripts/basic-cpu-and-memory.tmux" \
         /usr/local/bin/basic-cpu-and-memory.tmux

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

echo -e "\033[31m
    The Python library 'psutils' is required for tmuxified's 'basic-cpu-and-memory plugin'.

    \033[00mGet it here: \033[36mhttp://code.google.com/p/psutil/" >&2;
echo -n ""

# Enable git colours
git config --global --add color.ui true

exec $SHELL -l

tmux source-file ~/.tmux.conf
