#!/bin/bash

INSTALL_SCRIPT="install.sh"

PACKS="support bash vim"
for pack in $PACKS; do
  if [ -e $pack/$INSTALL_SCRIPT ]; then
    echo "Installing ${pack}..."
    cd $pack
    bash $INSTALL_SCRIPT
    cd ..
  else
    echo "No installation script found for $pack... skipping."
  fi
done

