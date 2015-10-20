#!/bin/bash
DIR="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
CP="/bin/cp -vfr"

printf "\Installing Base16 Colors"
git clone https://github.com/chriskempson/base16-shell ~/.config/base16-shell

\curl -L github.com/oh-my-fish/oh-my-fish/raw/master/bin/install | fish

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

printf "\nReplacing fish.config\n"
rm -fv ~/.config/fish.config
$CP "$DIR/../configuration/config.fish" ~/.config/fish/config.fish
rm -fv "$HOME/.config/omf/bundle"
$CP "$DIR/../configuration/omf_bundle" "$HOME/.config/omf/bundle"
