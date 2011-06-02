#!/bin/bash

if [ $EUID -ne 0 ]; then
  echo "Must be run as root"
  exit 1
fi

FONT=Monaco_Linux.ttf
FONT_SOURCE_DIR=fonts
FONT_TARGET_DIR=/usr/share/fonts/truetype/monaco

if [ ! -e $FONT_TARGET_DIR/$FONT ]; then
  echo "Adding $FONT to $FONT_TARGET_DIR/"
  mkdir $FONT_TARGET_DIR
  cp $FONT_SOURCE_DIR/$FONT $FONT_TARGET_DIR/$FONT
else
  echo "Monaco font already in place, nothing to do."
fi

