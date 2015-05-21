#!/bin/sh

cd pixman
tar -xf $PIXMAN_TARBALL_NAME
cd $PIXMAN_FOLDER_NAME

./configure --disable-static --prefix=$PREFIX 2>&1 | tee ../../logs/pixman-configure.log
make -j $NUMBER_OF_PROCESSORS 2>&1 | tee ../../logs/pixman-make.log
make install 2>&1 | tee ../../logs/pixman-makeinstall.log

cd ..
rm -rf $PIXMAN_FOLDER_NAME
