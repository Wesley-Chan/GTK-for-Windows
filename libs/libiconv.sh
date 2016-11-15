#!/bin/bash

set -e -o pipefail

cd libiconv
tar -xf $LIBICONV_TARBALL_NAME
cd $LIBICONV_FOLDER_NAME

CFLAGS="$CFLAGS -std=gnu89" ./configure --prefix=$PREFIX 2>&1 | tee ../../logs/libiconv-configure.log
make -j $NUMBER_OF_PROCESSORS 2>&1 | tee ../../logs/libiconv-make.log
make install 2>&1 | tee ../../logs/libiconv-makeinstall.log

cd ..
rm -rf $LIBICONV_FOLDER_NAME
