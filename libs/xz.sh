#!/bin/sh

cd xz
tar -xf $XZ_TARBALL_NAME
cd $XZ_FOLDER_NAME

./configure --disable-static --prefix=$PREFIX 2>&1 | tee ../../logs/xz-configure.log
make -j $NUMBER_OF_PROCESSORS 2>&1 | tee ../../logs/xz-make.log
make install 2>&1 | tee ../../logs/xz-makeinstall.log

cd ..
rm -rf $XZ_FOLDER_NAME
