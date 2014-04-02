#!/bin/sh

cd glibmm
tar -xf glibmm-2.39.92.tar.xz
cd glibmm-2.39.92

./configure --prefix=$PREFIX 2>&1 | tee ../../logs/glibmm-configure.log
make -j $NUMBER_OF_PROCESSORS 2>&1 | tee ../../logs/glibmm-make.log
make install 2>&1 | tee ../../logs/glibmm-makeinstall.log

cd ..
rm -rf glibmm-2.39.92
