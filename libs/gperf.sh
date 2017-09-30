#!/bin/bash

set -e -o pipefail

cd gperf
tar -xf $GPERF_TARBALL_NAME
cd $GPERF_FOLDER_NAME

./configure 2>&1 | tee ../../logs/gperf-configure.log
make -j $NUMBER_OF_PROCESSORS 2>&1 | tee ../../logs/gperf-make.log
make install 2>&1 | tee ../../logs/gperf-makeinstall.log

cd ..
rm -rf $GPERF_FOLDER_NAME
