#!/usr/bin/env bash

set -e

DIR="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
CP="/bin/cp -vfr"

printf "\nInstalling Base16 Colors"
BASE16="`eval echo ~/.config/base16-shell/`"
if [ -d "$BASE16/.git" ]; then
    cd $BASE16
    git pull
else
    rm -rf $BASE16
    git clone https://github.com/chriskempson/base16-shell.git $BASE16
fi

printf "\nInstall hub check"
if command -v hub >/dev/null 2>&1; then
  curl https://raw.githubusercontent.com/github/hub/master/etc/hub.fish_completion > ~/.config/fish/completions/hub.fish
else
  printf "\nhub command does not exist, install before continuing \n\nbrew install hub"
  exit 1
fi


printf "\nReplacing fish.config\n"
rm -fv ~/.config/fish.config
mkdir -p ~/.config/fish
$CP "$DIR/../configuration/fishfile" ~/.config/fish/fishfile
$CP "$DIR/../configuration/config.fish" ~/.config/fish/config.fish
$CP "$DIR/../configuration/logo.txt" ~/.config/fish/logo.txt
