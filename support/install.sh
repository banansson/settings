#!/bin/bash

if [ $EUID -ne 0 ]; then
  echo "Must be run as root"
  exit 1
fi

FONT_INSTALL_SCRIPT="install-fonts.sh"
if [ -e ${FONT_INSTALL_SCRIPT} ]; then
  bash ${FONT_INSTALL_SCRIPT}
else
  echo "Expected install script for fonts, but none found... skipping."
fi

