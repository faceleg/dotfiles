#!/bin/bash

source ./intellijidea-variables.sh

$CP "$DIR/configuration/$PRODUCT/configuration/" ~/Library/Preferences/${PRODUCT}/
$CP "$DIR/configuration/$PRODUCT/plugins/" ~/Library/Application\ Support/${PRODUCT}/
