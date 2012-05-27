#!/bin/bash

TERMINAL_DIR=~/.config/Terminal
TERMINALRC_SOURCE=$PWD/terminal/terminalrc
TERMINALRC_TARGET=$TERMINAL_DIR/terminalrc

if [ ! -d $TERMINAL_DIR ]; then
  echo "No directory for Terminal config found, creating..."
  mkdir -p $TERMINAL_DIR
fi

if [ -e $TERMINALRC_TARGET ]; then
  echo "Found existing terminalrc, making a backup..."
  mv $TERMINALRC_TARGET $TERMINALRC_TARGET-backup
fi

cp $TERMINALRC_SOURCE $TERMINALRC_TARGET
echo "$TERMINALRC_SOURCE copied to $TERMINALRC_TARGET"
echo "For some reason linking it won't make terminal pick ut the changes"
 
