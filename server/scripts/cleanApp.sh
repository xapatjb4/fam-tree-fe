#!/bin/bash
serverAppBuildLocation='../public/appBuild'
# Enable extglob for group delete
shopt -s extglob
cd $serverAppBuildLocation &&
# Remove all folders/files except gitignore
rm -r !('.gitignore')
# Disable extglob since no longer needed
shopt -u extglob