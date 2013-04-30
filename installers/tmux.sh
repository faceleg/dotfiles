#!/bin/bash
DIR="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
CP="/bin/cp -vfr"

printf "\nConfiguring tmux\n"

$CP "$DIR/../configuration/tmux.conf" ~/.tmux.conf
# Remove old tmux config
rm -rf ~/.tmux-themes

# Create tmux-themes directory structure & copy files
$CP "$DIR/../addons/tmux/themes/" ~/.tmux-themes

chmod 755 ~/.tmux-themes
find ~/.tmux-themes -type d -exec chmod 755 {} \;
find ~/.tmux-themes -type f -exec chmod 644 {} \;

tmux source-file ~/.tmux.conf

