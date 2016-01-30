#!/bin/bash

set -e -o pipefail

cd pango
tar -xf $PANGO_TARBALL_NAME
cd $PANGO_FOLDER_NAME

./configure --with-included-modules=yes --with-dynamic-modules=yes --prefix=$PREFIX 2>&1 | tee ../../logs/pango-configure.log
make -j $NUMBER_OF_PROCESSORS 2>&1 | tee ../../logs/pango-make.log
make install 2>&1 | tee ../../logs/pango-makeinstall.log

cd ..
rm -rf $PANGO_FOLDER_NAME
