#!/bin/bash

FONT_INSTALL_SCRIPT="install-fonts.sh"

if [ -e ${FONT_INSTALL_SCRIPT} ]; then
  bash ${FONT_INSTALL_SCRIPT}
else
  echo "Expected install script for fonts, but none found... skipping."
fi

