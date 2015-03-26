#!/bin/sh

cd libfontconfig
tar -xf fontconfig-2.11.93.tar.bz2
cd fontconfig-2.11.93

PYTHON=/mingw/opt/bin/python.exe ./configure --disable-static --disable-docs --prefix=$PREFIX 2>&1 | tee ../../logs/libfontconfig-configure.log
make -j $NUMBER_OF_PROCESSORS 2>&1 | tee ../../logs/libfontconfig-make.log
make install 2>&1 | tee ../../logs/libfontconfig-makeinstall.log

cd ..
rm -rf fontconfig-2.11.93
