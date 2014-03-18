#!/bin/sh

cd libiconv
tar -xf libiconv-1.14.tar.gz
cd libiconv-1.14

./configure --prefix=$PREFIX 2>&1 | tee ../../logs/libiconv-configure.log
make -j $NUMBER_OF_PROCESSORS 2>&1 | tee ../../logs/libiconv-make.log
make install 2>&1 | tee ../../logs/libiconv-makeinstall.log

cd ..
rm -rf libiconv-1.14
