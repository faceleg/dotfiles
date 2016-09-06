#!/bin/bash

source ./intellijidea-variables.sh

$CP "$BACKUP/configuration/" ~/Library/Preferences/${PRODUCT}/
$CP "$BACKUP/plugins/" ~/Library/Application\ Support/${PRODUCT}/
$CP "$BACKUP/ideavimrc" ~/.ideavimrc
