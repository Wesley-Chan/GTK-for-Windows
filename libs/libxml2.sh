#!/bin/bash

set -e -o pipefail

cd libxml2
tar -xf $LIBXML2_TARBALL_NAME
cd $LIBXML2_FOLDER_NAME

#To avoid using pkg-config.
export LZMA_LIBS=-llzma

./configure --disable-static --prefix=$PREFIX 2>&1 | tee ../../logs/libxml2-configure.log
make -j $NUMBER_OF_PROCESSORS 2>&1 | tee ../../logs/libxml2-make.log
make install 2>&1 | tee ../../logs/libxml2-makeinstall.log

cd ..
rm -rf $LIBXML2_FOLDER_NAME
