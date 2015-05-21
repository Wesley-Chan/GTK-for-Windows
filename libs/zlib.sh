#!/bin/sh

cd zlib
tar -xf $ZLIB_TARBALL_NAME
cd $ZLIB_FOLDER_NAME

make -f win32/Makefile.gcc -j $NUMBER_OF_PROCESSORS 2>&1 | tee ../../logs/zlib-make.log
prefix=/opt INCLUDE_PATH=/opt/include LIBRARY_PATH=/opt/lib BINARY_PATH=/opt/bin make -f win32/Makefile.gcc install SHARED_MODE=1 2>&1 | tee ../../logs/zlib-makeinstall.log

cd ..
rm -rf $ZLIB_FOLDER_NAME

echo OK!
