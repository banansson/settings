#!/bin/bash

if [ $EUID -ne 0 ]; then
  echo "Must be run as root"
  exit 1
fi

BASHRC_SOURCE=$PWD/bashrc
BASHRC_TARGET=~/.bashrc

if [ -e $BASHRC_TARGET ]; then
  echo "warning: .bachrc already exists, please delete manually and try again."
else
  ln -s $BASHRC_SOURCE $BASHRC_TARGET
  echo "$BASHRC_SOURCE linked to $BASHRC_TARGET"
  echo "run source ~/.bashrc to update your current session."
fi 

