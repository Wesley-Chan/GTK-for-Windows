#!/bin/sh

cd util-macros
tar -xf $UTIL_MACROS_TARBALL_NAME
cd $UTIL_MACROS_FOLDER_NAME

./configure --prefix=/usr 2>&1 | tee ../../logs/util-macros-configure.log
make install 2>&1 | tee ../../logs/util-macros-makeinstall.log

cd ..
rm -rf $UTIL_MACROS_FOLDER_NAME
