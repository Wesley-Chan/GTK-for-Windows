#!/bin/bash

set -e -o pipefail

cd libfontconfig
tar -xf $LIBFONTCONFIG_TARBALL_NAME
cd $LIBFONTCONFIG_FOLDER_NAME

PYTHON=/mingw/opt/bin/python.exe ./configure --disable-static --disable-docs --prefix=$PREFIX 2>&1 | tee ../../logs/libfontconfig-configure.log
make -j $NUMBER_OF_PROCESSORS 2>&1 | tee ../../logs/libfontconfig-make.log
make install 2>&1 | tee ../../logs/libfontconfig-makeinstall.log

cd ..
rm -rf $LIBFONTCONFIG_FOLDER_NAME
