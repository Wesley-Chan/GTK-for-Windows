#!/bin/sh

cd libjpeg-turbo
tar -xf libjpeg-turbo-1.3.0.tar.gz
cd libjpeg-turbo-1.3.0

./configure --prefix=$PREFIX 2>&1 | tee ../../logs/libjpeg-turbo-configure.log
make -j $NUMBER_OF_PROCESSORS 2>&1 | tee ../../logs/libjpeg-turbo-make.log
make install 2>&1 | tee ../../logs/libjpeg-turbo-makeinstall.log

cd ..
rm -rf libjpeg-turbo-1.3.0
