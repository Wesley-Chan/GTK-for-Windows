#!/bin/sh

cd zlib
tar -xf zlib-1.2.8.tar.xz
cd zlib-1.2.8

cp win32/Makefile.gcc Makefile
make -j $NUMBER_OF_PROCESSORS 2>&1 | tee ../../logs/zlib-make.log

#Copying compilation result to the right place.
cp zlib1.dll $PREFIX/bin
cp zconf.h $PREFIX/include
cp zlib.h $PREFIX/include
cp libz.a $PREFIX/lib
cp libz.dll.a $PREFIX/lib

#Manually copy pkg-config "zlib.pc" file to the right place.
cd ..
cp zlib.pc $PREFIX/lib/pkgconfig/zlib.pc

rm -rf zlib-1.2.8

echo OK!
