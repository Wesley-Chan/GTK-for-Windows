#!/bin/bash

set -e -o pipefail

cd libcroco
tar -xf $LIBCROCO_TARBALL_NAME
cd $LIBCROCO_FOLDER_NAME

./configure --disable-static --prefix=$PREFIX 2>&1 | tee ../../logs/libcroco-configure.log
make -j $NUMBER_OF_PROCESSORS 2>&1 | tee ../../logs/libcroco-make.log
make install 2>&1 | tee ../../logs/libcroco-makeinstall.log

cd ..
rm -rf $LIBCROCO_FOLDER_NAME
