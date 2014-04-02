#!/bin/sh

cd pangomm
tar -xf pangomm-2.34.0.tar.xz
cd pangomm-2.34.0

./configure --prefix=$PREFIX 2>&1 | tee ../../logs/pangomm-configure.log
make -j $NUMBER_OF_PROCESSORS 2>&1 | tee ../../logs/pangomm-make.log
make install 2>&1 | tee ../../logs/pangomm-makeinstall.log

cd ..
rm -rf pangomm-2.34.0
