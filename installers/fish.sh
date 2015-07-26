#!/bin/bash
DIR="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
CP="/bin/cp -vfr"

\curl -L https://github.com/oh-my-fish/oh-my-fish/raw/master/tools/install.fish | fish

printf "\nInstalling bass\n"
git clone https://github.com/edc/bass.git /tmp/bass
cd /tmp/bass
make install
cd ~/
rm -rf /tmp/bass

printf "\nInstalling z-fish\n"
git clone https://github.com/leiserfg/z-fish /tmp/z-fish
$CP /tmp/z-fish/z.fish ~/.config/fish/functions/z.fish
mkdir -p ~/.config/fish/completions
$CP /tmp/z-fish/z_complete.fish ~/.config/fish/completions/z_complete.fish
# rm -rf /tmp/z-fish

printf "\nReplacing fish.config\n"
rm -fv ~/.config/fish.config
$CP "$DIR/../configuration/config.fish" ~/.config/fish/config.fish

