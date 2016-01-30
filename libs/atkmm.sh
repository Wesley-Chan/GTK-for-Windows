#!/bin/bash

set -e -o pipefail

cd atkmm
tar -xf $ATKMM_TARBALL_NAME
cd $ATKMM_FOLDER_NAME

./configure --prefix=$PREFIX 2>&1 | tee ../../logs/atkmm-configure.log
make -j $NUMBER_OF_PROCESSORS 2>&1 | tee ../../logs/atkmm-make.log
make install 2>&1 | tee ../../logs/atkmm-makeinstall.log

cd ..
rm -rf $ATKMM_FOLDER_NAME
