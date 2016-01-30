#!/bin/bash

set -e -o pipefail

cd intltool
tar -xf $INTLTOOL_TARBALL_NAME
cd $INTLTOOL_FOLDER_NAME

./configure --prefix=/mingw 2>&1 | tee ../../logs/intltool-configure.log
make -j $NUMBER_OF_PROCESSORS 2>&1 | tee ../../logs/intltool-make.log
make install 2>&1 | tee ../../logs/intltool-makeinstall.log

cd ..
rm -rf $INTLTOOL_FOLDER_NAME
