#!/bin/sh

cd libfreetype
tar -xf freetype-2.5.5.tar.bz2
cd freetype-2.5.5

./configure --disable-static --prefix=$PREFIX 2>&1 | tee ../../logs/libfreetype-configure.log
make -j $NUMBER_OF_PROCESSORS 2>&1 | tee ../../logs/libfreetype-make.log
make install 2>&1 | tee ../../logs/libfreetype-makeinstall.log

cd ..
rm -rf freetype-2.5.5
