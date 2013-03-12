#!/bin/bash 

DIR="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
CP="/bin/cp -vfr"

INSTALL_GIT=true
INSTALL_VIM=true
INSTALL_CONFIG=true
INSTALL_TMUX=true

if ! OPTIONS=$(getopt -o cgvt -l no-config,no-git,no-vim,no-tmux -- "$@")
then
    # something went wrong, getopt will put out an error message for us
    exit 1
fi

set -- $OPTIONS

while [ $# -gt 0 ]; do
    case $1 in
        "-c" | "--no-config") INSTALL_CONFIG=false ;;
        "-g" | "--no-git") INSTALL_GIT=false ;;
        "-v" | "--no-vim") INSTALL_VIM=false ;;
        "-t" | "--no-tmux") INSTALL_TMUX=false ;;
        (--) shift; break;;
        (-*) echo "$0: error - unrecognized option $1" 1>&2; exit 1;;
        (*) break;;
    esac
    shift
done

if $INSTALL_TMUX; then
    echo 'Configuring tmux'
    # Remove old tmux config
    rm -rf ~/.tmux-themes
    
    # Create tmux-themes directory structure & copy files
    $CP "$DIR/tmux/themes/" ~/.tmux-themes
    
    chmod 755 ~/.tmux-themes
    find ~/.tmux-themes -type d -exec chmod 755 {} \;
    find ~/.tmux-themes -type f -exec chmod 644 {} \;
    
    tmux source-file ~/.tmux.conf
fi 

if $INSTALL_CONFIG ; then
    echo 'General configuration'
    
    # Copy basic config files
    cd conf
    for FILE in *; do
        rm -v "`eval echo ~/.${FILE//>}`"
        $CP "$DIR/conf/$FILE" "`eval echo ~/.${FILE//>}`"
    done;
    cd ../

fi

if $INSTALL_GIT; then
    echo 'Git configuration'
    ./configure-git.sh
fi

if $INSTALL_VIM; then
    echo 'Vim plugins & configuration'
    ./install-vim.sh
fi

echo "
Run the following command to update ZSH:

source ~/.zshrc"

