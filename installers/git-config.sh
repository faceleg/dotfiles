#!/usr/bin/env bash

set -x
set -e

DIR="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
CP="/bin/cp -vfr"

echo '
[color]
        ui = true
[color "diff-highlight"]
        oldNormal = red bold
        oldHighlight = red bold 52
        newNormal = green bold
        newHighlight = green bold 22
[color "diff"]
        meta = yellow
        frag = magenta bold
        commit = yellow bold
        old = red bold
        new = green bold
 [core]
        pager = diff-so-fancy | less --tabs=4 -RFX
' > ~/.gitconfig_faceleg

if grep -q ".gitconfig_faceleg" ~/.gitconfig
then
  echo "Config include exists"
else
  echo "[include]
  path = .gitconfig_faceleg
" >> ~/.gitconfig
fi

