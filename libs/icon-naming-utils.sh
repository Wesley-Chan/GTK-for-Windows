#!/bin/sh

cd icon-naming-utils
tar -xf icon-naming-utils-0.8.90.tar.bz2
cd icon-naming-utils-0.8.90

./configure --prefix=$PREFIX 2>&1 | tee ../../logs/icon-naming-utils-configure.log
make -j $NUMBER_OF_PROCESSORS 2>&1 | tee ../../logs/icon-naming-utils-make.log
make install 2>&1 | tee ../../logs/icon-naming-utils-makeinstall.log

cd ..
rm -rf icon-naming-utils-0.8.90
