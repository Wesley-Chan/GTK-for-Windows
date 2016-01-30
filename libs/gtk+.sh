#!/bin/bash

set -e -o pipefail

cd gtk+
tar -xf $GTK_TARBALL_NAME
cd $GTK_FOLDER_NAME

./configure --enable-win32-backend --enable-broadway-backend --with-included-immodules --prefix=$PREFIX 2>&1 | tee ../../logs/gtk+-configure.log
make -j $NUMBER_OF_PROCESSORS 2>&1 | tee ../../logs/gtk+-make.log
make install 2>&1 | tee ../../logs/gtk+-makeinstall.log

cd ..
rm -rf $GTK_FOLDER_NAME
