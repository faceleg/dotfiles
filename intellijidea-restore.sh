#!/bin/bash
DIR="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
CP="/bin/cp -fr"

PRODUCT="IntelliJIdea2016.2"

$CP "$DIR/configuration/$PRODUCT/configuration" ~/Library/Preferences/${PRODUCT}
$CP "$DIR/configuration/$PRODUCT/plugins" ~/Library/Application\ Support/${PRODUCT}

rm -rf $DIR/configuration/$PRODUCT/configuration/port*
rm -rf $DIR/configuration/$PRODUCT/configuration/tasks
rm -rf $DIR/configuration/$PRODUCT/configuration/settingsRepository
rm -rf $DIR/configuration/$PRODUCT/configuration/jdbc-drivers
rm -rf $DIR/configuration/$PRODUCT/configuration/eval
