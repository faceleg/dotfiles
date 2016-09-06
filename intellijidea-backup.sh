#!/bin/bash

source ./intellijidea-variables.sh

DATE=`date +%Y-%m-%d_%H-%M-%S`
mv ${BACKUP} "${BACKUP}__${DATE}"

mkdir -p "$BACKUP/configuration"
mkdir -p "$BACKUP/plugins"

$CP ~/Library/Preferences/${PRODUCT}/* "$BACKUP/configuration/"
rm -rf ${BACKUP}/configuration/port*
rm -rf ${BACKUP}/configuration/tasks
rm -rf ${BACKUP}/configuration/settingsRepository
rm -rf ${BACKUP}/configuration/jdbc-drivers
rm -rf ${BACKUP}/configuration/eval
rm -rf ${BACKUP}/configuration/options/git.xml
rm -rf ${BACKUP}/configuration/options/dimensions.xml
rm -rf ${BACKUP}/configuration/options/feature.usage.statistics.xml
rm -rf ${BACKUP}/configuration/options/jdk.table.xml
rm -rf ${BACKUP}/configuration/options/window.manager.xml
rm -rf ${BACKUP}/configuration/options/window.state.xml
rm -rf ${BACKUP}/configuration/options/options.xml
rm -rf ${BACKUP}/configuration/options/databaseDrivers.xml
rm -rf ${BACKUP}/configuration/options/databaseSettings.xml
rm -rf ${BACKUP}/configuration/options/proxy*
rm -rf ${BACKUP}/configuration/options/recentProjects.xml
rm -rf ${BACKUP}/configuration/options/other.xml
rm -rf ${BACKUP}/configuration/options/security.xml
rm -rf ${BACKUP}/configuration/options/statistics.application.usages.xml
rm -rf ${BACKUP}/configuration/options/stubIndex.xml
rm -rf ${BACKUP}/configuration/options/updates.xml
rm -rf ${BACKUP}/configuration/options/usage.statistics.xml
rm -rf ${BACKUP}/configuration/options/vim_settings.xml

$CP ~/Library/Application\ Support/${PRODUCT}/* "$BACKUP/plugins/"

$CP ~/.ideavimrc "$BACKUP/ideavimrc"
