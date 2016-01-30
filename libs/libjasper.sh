#!/bin/bash

set -e -o pipefail

cd libjasper
unzip -o $LIBJASPER_TARBALL_NAME
cd $LIBJASPER_FOLDER_NAME

#Patch source for the undefined reference to sleep problem
cd ..
patch -p0 < jasper-1.900.1-win32_sleep.patch
cd jasper-1.900.1

./configure --disable-static --enable-shared --prefix=$PREFIX 2>&1 | tee ../../logs/libjasper-configure.log

#Correct libtool for the undefined symbols problem,
#which prevents shared DLL creation
mv libtool libtool.old
cp ../libtool libtool

make -j $NUMBER_OF_PROCESSORS 2>&1 | tee ../../logs/libjasper-make.log
make install 2>&1 | tee ../../logs/libjasper-makeinstall.log

cd ..
rm -rf $LIBJASPER_FOLDER_NAME
