#!/bin/bash
# Copy dot files to home
DIR="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cp -r $DIR/.[a-zA-Z0-9]* ~/
