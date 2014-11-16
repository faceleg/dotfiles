#!/bin/bash
DIR="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
CP="/bin/cp -vfr"

# brew uninstall weechat
# brew install weechat --with-python --with-python

$CP "$DIR/../configuration/weechat/" "$HOME/.weechat"

