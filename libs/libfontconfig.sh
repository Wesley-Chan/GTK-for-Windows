#!/bin/sh

cd libfontconfig
tar -xf fontconfig-2.11.0.tar.bz2
cd fontconfig-2.11.0

./configure --disable-static --disable-docs --prefix=$PREFIX 2>&1 | tee ../../logs/libfontconfig-configure.log

#test-migration.c is buggy when compiling with MinGW-w64 and we don't need it.
cd ..
patch -p0 < fontconfig-2.11.0-Makefile.patch
cd fontconfig-2.11.0

make -j $NUMBER_OF_PROCESSORS 2>&1 | tee ../../logs/libfontconfig-make.log
make install 2>&1 | tee ../../logs/libfontconfig-makeinstall.log

cd ..
rm -rf fontconfig-2.11.0
