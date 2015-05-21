#!/bin/sh

cd libffi
tar -xf $LIBFFI_TARBALL_NAME
cd $LIBFFI_FOLDER_NAME

./configure --disable-static --prefix=$PREFIX 2>&1 | tee ../../logs/libffi-configure.log
make -j $NUMBER_OF_PROCESSORS 2>&1 | tee ../../logs/libffi-make.log
make install 2>&1 | tee ../../logs/libffi-makeinstall.log

cd ..
rm -rf $LIBFFI_FOLDER_NAME
