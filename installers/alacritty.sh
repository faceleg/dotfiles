#!/bin/bash
DIR="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

set -e
set -x

mkdir -p ~/.config/alacritty
cp $DIR/../configuration/alacritty.yml ~/.config/alacritty/alacritty.yml

ALACRITTY="`eval echo ~/.alacritty/`"
if [ -d "$ALACRITTY/.git" ]; then
    cd $ALACRITTY
    git pull
else
    rm -rf $ALACRITTY
    git clone --depth 1 https://github.com/jwilm/alacritty.git $ALACRITTY
fi

cd $ALACRITTY

command -v rustup >/dev/null 2>&1 || { curl https://sh.rustup.rs -sSf | sh; source $HOME/.cargo/env; }

rustup override set stable
rustup update stable

cargo build --release

make app
cp -r target/release/osx/Alacritty.app /Applications/Alacritty.app
sudo cp target/release/alacritty /usr/local/bin

