#!/bin/bash

set -e -o pipefail

cd expat
tar -xf $EXPAT_TARBALL_NAME
cd $EXPAT_FOLDER_NAME

./configure --disable-static --prefix=$PREFIX 2>&1 | tee ../../logs/expat-configure.log
make -j $NUMBER_OF_PROCESSORS 2>&1 | tee ../../logs/expat-make.log
make install 2>&1 | tee ../../logs/expat-makeinstall.log

cd ..
rm -rf $EXPAT_FOLDER_NAME
