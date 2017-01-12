#!/usr/bin/env bash

#!/bin/bash
DIR="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
CP="/bin/cp -vfr"

printf "\Installing Base16 Colors"
git clone https://github.com/chriskempson/base16-shell ~/.config/base16-shell

printf "\nReplacing fish.config\n"
rm -fv ~/.config/fish.config
$CP "$DIR/../configuration/fishfile" ~/.config/fish/fishfile
$CP "$DIR/../configuration/config.fish" ~/.config/fish/config.fish
$CP "$DIR/../configuration/logo.txt" ~/.config/fish/logo.txt
