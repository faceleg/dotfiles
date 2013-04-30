#!/bin/bash
DIR="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
CP="/bin/cp -vfr"

printf "\nGeneral configuration\n"

# Copy basic config files
cd "$DIR/../configuration"
for FILE in *; do
    EXISTING_FILE="`eval echo ~/.${FILE//>}`"
    if [[ -d $EXISTING_FILE ]]; then
       rm -v $EXISTING_FILE
    fi

    $CP "$DIR/../configuration/$FILE" $EXISTING_FILE  
done;
cd ../

printf "\n
Run the following command to update ZSH:

source ~/.zshrc\n"


