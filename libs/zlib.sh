#!/bin/sh

cd zlib
tar -xf zlib-1.2.8.tar.xz
cd zlib-1.2.8

make -f win32/Makefile.gcc -j $NUMBER_OF_PROCESSORS 2>&1 | tee ../../logs/zlib-make.log
prefix=/opt INCLUDE_PATH=/opt/include LIBRARY_PATH=/opt/lib BINARY_PATH=/opt/bin make -f win32/Makefile.gcc install SHARED_MODE=1 2>&1 | tee ../../logs/zlib-makeinstall.log

cd ..
rm -rf zlib-1.2.8

echo OK!
