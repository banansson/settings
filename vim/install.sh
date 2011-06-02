#!/bin/bash

if [ $EUID -ne 0 ]; then
  echo "Must be run as root"
  exit 1
fi

VIMRC_SOURCE=$PWD/vimrc
VIMRC_TARGET=~/.vimrc
VIMFILES_SOURCE=$PWD
VIMFILES_TARGET=~/.vim

if [ -e $VIMRC_TARGET ]; then
  echo "warning: .vimrc already exists, please delete manually and try again."
else
  ln -s $VIMRC_SOURCE $VIMRC_TARGET
  echo "$VIMRC_SOURCE linked to $VIMRC_TARGET"
fi 

if [ -e $VIMFILES_TARGET ]; then
  echo "warning: .vim directory exists, please delete manually and try again."
else
  ln -s $VIMFILES_SOURCE $VIMFILES_TARGET
  echo "$VIMFILES_SOURCE linked to $VIMFILES_TARGET"
fi

