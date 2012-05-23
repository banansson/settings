#!/bin/bash

TERMINALRC_SOURCE=$PWD/terminal/terminalrc
TERMINALRC_TARGET=~/.config/Terminal/terminalrc

if [ -e $TERMINALRC_TARGET ]; then
  echo "found existing terminalrc, making a backup..."
  mv $TERMINALRC_TARGET $TERMINALRC_TARGET-backup
fi

cp $TERMINALRC_SOURCE $TERMINALRC_TARGET
echo "$TERMINALRC_SOURCE copied to $TERMINALRC_TARGET"
echo "for some reason linking it won't make terminal pick ut the changes"
 
