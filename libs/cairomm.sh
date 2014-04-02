#!/bin/sh

cd cairomm
tar -xf cairomm-1.11.2.tar.gz
cd cairomm-1.11.2

./configure --prefix=$PREFIX 2>&1 | tee ../../logs/cairomm-configure.log
make -j $NUMBER_OF_PROCESSORS 2>&1 | tee ../../logs/cairomm-make.log
make install 2>&1 | tee ../../logs/cairomm-makeinstall.log

cd ..
rm -rf cairomm-1.11.2
