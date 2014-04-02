#!/bin/sh

cd atkmm
tar -xf atkmm-2.22.7.tar.xz
cd atkmm-2.22.7

./configure --prefix=$PREFIX 2>&1 | tee ../../logs/atkmm-configure.log
make -j $NUMBER_OF_PROCESSORS 2>&1 | tee ../../logs/atkmm-make.log
make install 2>&1 | tee ../../logs/atkmm-makeinstall.log

cd ..
rm -rf atkmm-2.22.7
