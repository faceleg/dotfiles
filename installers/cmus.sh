#!/bin/bash
DIR="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
CP="/bin/cp -vfr"

printf "\nConfiguring cmus\n"

# Install tmux themes
$CP "$DIR/../addons/cmus/." ~/.cmus/

