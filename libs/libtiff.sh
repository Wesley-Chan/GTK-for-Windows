#!/bin/sh

cd libtiff
tar -xf tiff-4.0.3.tar.gz
cd tiff-4.0.3

./configure --disable-cxx --prefix=$PREFIX 2>&1 | tee ../../logs/libtiff-configure.log
make -j $NUMBER_OF_PROCESSORS 2>&1 | tee ../../logs/libtiff-make.log
make install 2>&1 | tee ../../logs/libtiff-makeinstall.log

cd ..
rm -rf tiff-4.0.3
