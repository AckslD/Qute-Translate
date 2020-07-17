#!/bin/bash

PATH=~/.local/share/qutebrowser/userscripts
FILE=translate

echo "Creating directory $PATH if it does not exist"
mkdir -p $PATH
echo "Copying file $FILE to $PATH"
cp ./$FILE $PATH
echo "Making file $PATH/$FILE executable"
chmod +x $PATH/$FILE
