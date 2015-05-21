#!/bin/sh

cd libjpeg-turbo
tar -xf $LIBJPEG_TURBO_TARBALL_NAME
cd $LIBJPEG_TURBO_FOLDER_NAME

./configure --disable-static --prefix=$PREFIX 2>&1 | tee ../../logs/libjpeg-turbo-configure.log
make -j $NUMBER_OF_PROCESSORS 2>&1 | tee ../../logs/libjpeg-turbo-make.log
make install 2>&1 | tee ../../logs/libjpeg-turbo-makeinstall.log

cd ..
rm -rf $LIBJPEG_TURBO_FOLDER_NAME
