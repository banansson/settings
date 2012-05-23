#!/bin/bash

PACKAGE=git
QUERY=`whereis -b $PACKAGE | grep /usr/bin/git | wc -w`
if [ "$QUERY" -eq "0" ]; then
  echo "Installing git."
  sudo apt-get install git
else
  echo "Git is already installed."
fi

echo "Configuring, this will set the GLOBAL user and email."
echo -n "Do you want to continue? [y/n]: "
read choise
if [ "$choise" == "y" ]; then
  echo -n "What is your name?: "
  read name
  git config --global user.name "$name"

  echo -n "What is your e-mail?: "
  read email
  git config --global user.email $email
fi

echo "Turning on colors, cause why not."
git config --global color.ui auto

