#!/bin/sh

cd libiconv
tar -xf $LIBICONV_TARBALL_NAME
cd $LIBICONV_FOLDER_NAME

./configure --prefix=$PREFIX 2>&1 | tee ../../logs/libiconv-configure.log
make -j $NUMBER_OF_PROCESSORS 2>&1 | tee ../../logs/libiconv-make.log
make install 2>&1 | tee ../../logs/libiconv-makeinstall.log

cd ..
rm -rf $LIBICONV_FOLDER_NAME
