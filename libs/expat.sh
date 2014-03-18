#!/bin/sh

cd expat
tar -xf expat-2.1.0.tar.gz
cd expat-2.1.0

./configure --disable-static --prefix=$PREFIX 2>&1 | tee ../../logs/expat-configure.log
make -j $NUMBER_OF_PROCESSORS 2>&1 | tee ../../logs/expat-make.log
make install 2>&1 | tee ../../logs/expat-makeinstall.log

cd ..
rm -rf expat-2.1.0
