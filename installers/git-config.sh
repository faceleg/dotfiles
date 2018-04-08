#!/usr/bin/env bash

set -e

DIR="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
CP="/bin/cp -vfr"

if ! command -v diff-so-fancy >/dev/null 2>&1; then
  printf "\ndiff-so-fancy command does not exist, install before continuing \n\nbrew install diff-so-fancy"
  exit 1
fi

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
        whitespace = red reverse
[core]
        pager = diff-so-fancy | less --tabs=4 -RFX
' > ~/.gitconfig_faceleg

if ! grep -q ".gitconfig_faceleg" ~/.gitconfig
then
  echo "[include]
  path = .gitconfig_faceleg
" >> ~/.gitconfig
fi

