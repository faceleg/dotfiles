#!/usr/bin/env bash

#!/bin/bash
DIR="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
CP="/bin/cp -vfr"

printf "\Installing Base16 Colors"
git clone https://github.com/chriskempson/base16-shell ~/.config/base16-shell

printf "\Installing Fisherman"
curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs git.io/fisher

printf "\nReplacing fish.config\n"
rm -fv ~/.config/fish.config
$CP "$DIR/../configuration/fishfile" ~/.config/fish/fishfile
$CP "$DIR/../configuration/fish" ~/.config/fish/conf.d/fish
