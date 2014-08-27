#!/bin/sh

cd pixman
tar -xf pixman-0.32.6.tar.gz
cd pixman-0.32.6

./configure --disable-static --prefix=$PREFIX 2>&1 | tee ../../logs/pixman-configure.log
make -j $NUMBER_OF_PROCESSORS 2>&1 | tee ../../logs/pixman-make.log
make install 2>&1 | tee ../../logs/pixman-makeinstall.log

cd ..
rm -rf pixman-0.32.6
