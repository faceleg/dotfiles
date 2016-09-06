#!/bin/bash

DIR="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
CP="/usr/bin/rsync -avhi"

PRODUCT="IntelliJIdea2016.2"
BACKUP="$HOME/Dropbox/$PRODUCT"
