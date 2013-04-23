#!/bin/bash

echo "Installing vim plugins"

# Install vim plugins
vim/install-pathogen.sh
vim/install-gitgutter.sh
vim/install-fugitive.sh
vim/install-neocomplcache.sh
vim/install-minibuffexplorer.sh
vim/install-ctrlp.sh
vim/install-syntastic.sh
vim/install-nerd-tree.sh
