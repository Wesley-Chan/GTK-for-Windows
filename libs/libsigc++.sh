#!/bin/sh

cd libsigc++
tar -xf libsigc++-2.4.1.tar.xz
cd libsigc++-2.4.1

./configure --prefix=$PREFIX 2>&1 | tee ../../logs/libsigc++-configure.log
make -j $NUMBER_OF_PROCESSORS 2>&1 | tee ../../logs/libsigc++-make.log
make install 2>&1 | tee ../../logs/libsigc++-makeinstall.log

cd ..
rm -rf libsigc++-2.4.1
