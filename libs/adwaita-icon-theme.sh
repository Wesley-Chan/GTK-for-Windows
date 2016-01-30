#!/bin/bash

set -e -o pipefail

cd adwaita-icon-theme
tar -xf $ADWAITA_ICON_THEME_TARBALL_NAME
cd $ADWAITA_FOLDER_NAME

./configure --prefix=$PREFIX 2>&1 | tee ../../logs/adwaita-icon-theme-configure.log
make -j $NUMBER_OF_PROCESSORS 2>&1 | tee ../../logs/adwaita-icon-theme-make.log
make install 2>&1 | tee ../../logs/adwaita-icon-theme-makeinstall.log

cd ..
rm -rf $ADWAITA_FOLDER_NAME
