#!/bin/bash

set -e -o pipefail

cd pangomm
tar -xf $PANGOMM_TARBALL_NAME
cd $PANGOMM_FOLDER_NAME

./configure --prefix=$PREFIX 2>&1 | tee ../../logs/pangomm-configure.log
make -j $NUMBER_OF_PROCESSORS 2>&1 | tee ../../logs/pangomm-make.log
make install 2>&1 | tee ../../logs/pangomm-makeinstall.log

cd ..
rm -rf $PANGOMM_FOLDER_NAME
