#!/bin/bash

set -e -o pipefail

cd cairo
tar -xf $CAIRO_TARBALL_NAME
cd $CAIRO_FOLDER_NAME

./configure --disable-static --enable-win32=yes --enable-win32-font=yes --enable-png=yes --enable-ft=yes --enable-fc=yes --prefix=$PREFIX 2>&1 | tee ../../logs/cairo-configure.log
make -j $NUMBER_OF_PROCESSORS 2>&1 | tee ../../logs/cairo-make.log
make install 2>&1 | tee ../../logs/cairo-makeinstall.log

#Copy cairo.def to its final location.
cp src/cairo.def $PREFIX/lib

cd ..
rm -rf $CAIRO_FOLDER_NAME
