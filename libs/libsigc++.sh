#!/bin/sh

cd libsigc++
tar -xf $LIBSIGCPP_TARBALL_NAME
cd $LIBSIGCPP_FOLDER_NAME

./configure --prefix=$PREFIX 2>&1 | tee ../../logs/libsigc++-configure.log
make -j $NUMBER_OF_PROCESSORS 2>&1 | tee ../../logs/libsigc++-make.log
make install 2>&1 | tee ../../logs/libsigc++-makeinstall.log

cd ..
rm -rf $LIBSIGCPP_FOLDER_NAME
