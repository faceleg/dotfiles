#!/bin/bash

source ./intellijidea-variables.sh

mkdir -p "$BACKUP/configuration"
mkdir -p "$BACKUP/plugins"

$CP ~/Library/Preferences/${PRODUCT}/* "$BACKUP/configuration/"
rm -rf $BACKUP/configuration/port*
rm -rf $BACKUP/configuration/tasks
rm -rf $BACKUP/configuration/settingsRepository
rm -rf $BACKUP/configuration/jdbc-drivers
rm -rf $BACKUP/configuration/eval
rm -rf $BACKUP/configuration/options/git.xml
rm -rf $BACKUP/configuration/options/jdk.table.xml
rm -rf $BACKUP/configuration/options/window.manager.xml
rm -rf $BACKUP/configuration/options/window.state.xml
rm -rf $BACKUP/configuration/options/options.xml
rm -rf $BACKUP/configuration/options/databaseDrivers.xml
rm -rf $BACKUP/configuration/options/databaseSettings.xml

$CP ~/Library/Application\ Support/${PRODUCT}/* "$BACKUP/plugins/"
