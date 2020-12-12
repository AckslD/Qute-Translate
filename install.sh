#!/usr/bin/bash

INSTALL_PATH=~/.local/share/qutebrowser/userscripts
FILE=translate

echo "Creating directory $INSTALL_PATH if it does not exist"
mkdir -p $INSTALL_PATH
echo "Creating symbolic link to $FILE at $INSTALL_PATH"
ln -s $(pwd)/$FILE $INSTALL_PATH
