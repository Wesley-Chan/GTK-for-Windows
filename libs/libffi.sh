#!/bin/sh

cd libffi
tar -xf libffi-3.0.13.tar.gz
cd libffi-3.0.13

./configure --disable-static --prefix=$PREFIX 2>&1 | tee ../../logs/libffi-configure.log
make -j $NUMBER_OF_PROCESSORS 2>&1 | tee ../../logs/libffi-make.log
make install 2>&1 | tee ../../logs/libffi-makeinstall.log

cd ..
rm -rf libffi-3.0.13
