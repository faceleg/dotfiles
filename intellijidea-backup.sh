#!/bin/bash
DIR="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
CP="/bin/cp -fr"

PRODUCT="IntelliJIdea2016.2"

$CP ~/Library/Preferences/${PRODUCT}/ "$DIR/configuration/$PRODUCT/configuration"
$CP ~/Library/Application\ Support/${PRODUCT} "$DIR/configuration/$PRODUCT/plugins"

rm -rf ${DIR}/configuration/${PRODUCT}/configuration/port*
rm -rf ${DIR}/configuration/${PRODUCT}/configuration/tasks
rm -rf ${DIR}/configuration/${PRODUCT}/configuration/settingsRepository
rm -rf ${DIR}/configuration/${PRODUCT}/configuration/jdbc-drivers
rm -rf ${DIR}/configuration/${PRODUCT}/configuration/eval
