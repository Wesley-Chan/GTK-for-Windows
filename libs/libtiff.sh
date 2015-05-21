#!/bin/sh

cd libtiff
tar -xf $LIBTIFF_TARBALL_NAME
cd $LIBTIFF_FOLDER_NAME

./configure --disable-static --disable-cxx --prefix=$PREFIX 2>&1 | tee ../../logs/libtiff-configure.log
make -j $NUMBER_OF_PROCESSORS 2>&1 | tee ../../logs/libtiff-make.log
make install 2>&1 | tee ../../logs/libtiff-makeinstall.log

cd ..
rm -rf $LIBTIFF_FOLDER_NAME
