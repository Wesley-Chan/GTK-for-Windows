#!/bin/bash

set -e -o pipefail

cd cairomm
tar -xf $CAIROMM_TARBALL_NAME
cd $CAIROMM_FOLDER_NAME

CXXFLAGS="-g -O2 -std=gnu++11" ./configure --prefix=$PREFIX 2>&1 | tee ../../logs/cairomm-configure.log
make -j $NUMBER_OF_PROCESSORS 2>&1 | tee ../../logs/cairomm-make.log
make install 2>&1 | tee ../../logs/cairomm-makeinstall.log

cd ..
rm -rf $CAIROMM_FOLDER_NAME
