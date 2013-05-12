#!/bin/bash
DIR="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
CP="/bin/cp -vfr"

printf "\nConfiguring egk2\n"

mkdir -p ~/.ekg2

# Install ekg2 themes
$CP "$DIR/../addons/ekg2/." ~/.ekg2/

# Install ekg2 config
$CP "$DIR/../configuration/ekg2/." ~/.ekg2/

