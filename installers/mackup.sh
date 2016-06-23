#!/bin/bash
is_osx () {
    [[ $('uname') == 'Darwin' ]]
}

if [ $('uname') != 'Darwin' ]; then
    echo "Not in OS X!"
    exit
fi

DIR="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

command_exists () {
    type "$1" &> /dev/null;
}

printf "\nCopying master mackup config\n"

cp -v "$DIR/../configuration/mackup.cfg" ~/.mackup.cfg
