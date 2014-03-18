#!/bin/sh

cd xz
tar -xf xz-5.0.5.tar.xz
cd xz-5.0.5

./configure --disable-static --prefix=$PREFIX 2>&1 | tee ../../logs/xz-configure.log
make -j $NUMBER_OF_PROCESSORS 2>&1 | tee ../../logs/xz-make.log
make install 2>&1 | tee ../../logs/xz-makeinstall.log

cd ..
rm -rf xz-5.0.5
