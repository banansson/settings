#!/bin/bash

BASHRC_SOURCE=$PWD/bashrc
BASHRC_TARGET=~/.bashrc

if [ -e $BASHRC_TARGET ]; then
  echo "warning: .bachrc already exists, please delete manually and try again."
else
  ln -s $BASHRC_SOURCE $BASHRC_TARGET
  echo "$BASHRC_SOURCE linked to $BASHRC_TARGET"
  echo "run source ~/.bashrc to update your current session."
fi 

