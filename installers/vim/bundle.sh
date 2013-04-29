#!/bin/bash
PLUGIN_OWNER=$1
PLUGIN_NAME=$2

DIRECTORY="`eval echo ~/.vim/bundle/${PLUGIN_NAME//>}`"

echo "Installing $PLUGIN_NAME"

if [ ! -d $DIRECTORY ]; then
    git clone "https://github.com/$PLUGIN_OWNER/$PLUGIN_NAME.git" $DIRECTORY 
else
    cd ~/.vim/bundle/$PLUGIN_NAME
    git pull
fi
echo ""
