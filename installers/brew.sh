#!/bin/bash
DIR="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

command_exists () {
    type "$1" &> /dev/null;
}

printf "\nInstalling/Updating Brew\n"

if command_exists 'brew'; then
    brew update
    brew upgrade
    cask update
    cask upgrade
else
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

cd "$DIR/configuration"

brew tap homebrew/boneyard
brew bundle
