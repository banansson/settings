#!/bin/bash

FONT=Monaco_Linux.ttf
FONT_SOURCE_DIR=fonts
FONT_TARGET_DIR=/usr/share/fonts/truetype/monaco

function runas_root() {
  cmd=$1
  has_sudo=`which sudo`
  if [ $has_sudo ]; then
    sudo $cmd
  else
    su -c root $cmd
  fi
}

if [ ! -e $FONT_TARGET_DIR/$FONT ]; then
  echo "Adding $FONT to $FONT_TARGET_DIR/"
  echo "You may be prompted for your password (sudo) or the root password (su)."
  runas_root "mkdir -p $FONT_TARGET_DIR"
  runas_root "cp $FONT_SOURCE_DIR/$FONT $FONT_TARGET_DIR/$FONT"
else
  echo "Monaco font already in place, nothing to do."
fi

