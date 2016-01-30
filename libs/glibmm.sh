#!/bin/bash

set -e -o pipefail

cd glibmm
tar -xf $GLIBMM_TARBALL_NAME
cd $GLIBMM_FOLDER_NAME

./configure --prefix=$PREFIX 2>&1 | tee ../../logs/glibmm-configure.log
make -j $NUMBER_OF_PROCESSORS 2>&1 | tee ../../logs/glibmm-make.log
make install 2>&1 | tee ../../logs/glibmm-makeinstall.log

cd ..
rm -rf $GLIBMM_FOLDER_NAME
