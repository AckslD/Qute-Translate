#!/bin/bash

INSTALL_PATH=~/.local/share/qutebrowser/userscripts
FILE=translate

echo "Creating directory $INSTALL_PATH if it does not exist"
mkdir -p $INSTALL_PATH
echo "Copying file $FILE to $INSTALL_PATH"
cp ./$FILE $INSTALL_PATH
echo "Making file $INSTALL_PATH/$FILE executable"
chmod +x $INSTALL_PATH/$FILE
