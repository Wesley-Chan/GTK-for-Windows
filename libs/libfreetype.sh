#!/bin/sh

cd libfreetype
tar -xf $LIBFREETYPE_TARBALL_NAME
cd $LIBFREETYPE_FOLDER_NAME

./configure --disable-static --prefix=$PREFIX 2>&1 | tee ../../logs/libfreetype-configure.log
make -j $NUMBER_OF_PROCESSORS 2>&1 | tee ../../logs/libfreetype-make.log
make install 2>&1 | tee ../../logs/libfreetype-makeinstall.log

cd ..
rm -rf $LIBFREETYPE_FOLDER_NAME
