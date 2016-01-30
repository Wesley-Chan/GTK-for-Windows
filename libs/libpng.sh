#!/bin/bash

set -e -o pipefail

cd libpng
tar -xf $LIBPNG_TARBALL_NAME
cd $LIBPNG_FOLDER_NAME

./configure --disable-static --prefix=$PREFIX 2>&1 | tee ../../logs/libpng-configure.log
make -j $NUMBER_OF_PROCESSORS 2>&1 | tee ../../logs/libpng-make.log
make install 2>&1 | tee ../../logs/libpng-makeinstall.log

cd ..
rm -rf $LIBPNG_FOLDER_NAME
