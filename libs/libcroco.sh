#!/bin/sh

cd libcroco
tar -xf libcroco-0.6.8.tar.xz
cd libcroco-0.6.8

./configure --prefix=$PREFIX 2>&1 | tee ../../logs/libcroco-configure.log
make -j $NUMBER_OF_PROCESSORS 2>&1 | tee ../../logs/libcroco-make.log
make install 2>&1 | tee ../../logs/libcroco-makeinstall.log

cd ..
rm -rf libcroco-0.6.8
