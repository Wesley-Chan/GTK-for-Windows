#!/bin/sh

cd cairo
tar -xf cairo-1.12.16.tar.xz
cd cairo-1.12.16

./configure --disable-static --enable-win32=yes --enable-win32-font=yes --enable-png=yes --enable-ft=yes --enable-fc=yes --prefix=$PREFIX 2>&1 | tee ../../logs/cairo-configure.log
make -j $NUMBER_OF_PROCESSORS 2>&1 | tee ../../logs/cairo-make.log
make install 2>&1 | tee ../../logs/cairo-makeinstall.log

#Copy cairo.def to its final location...
cp src/cairo.def $PREFIX/lib

cd ..
rm -rf cairo-1.12.16
