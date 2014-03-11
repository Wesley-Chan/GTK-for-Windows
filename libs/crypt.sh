#!/bin/sh

cd crypt
tar -xf crypt-1.2-1-src.tar.bz2
tar -xf crypt-1.2.tar.bz2
cd crypt

export CC=gcc
make -j $NUMBER_OF_PROCESSORS 2>&1 | tee ../../logs/crypt-make.log

#Copying compilation result to the right place.
cp libcrypt.a /mingw/i686-w64-mingw32/lib

#Copy and rename encrypt.h to crypt.h.
cp encrypt.h /mingw/i686-w64-mingw32/include/crypt.h

cd ..
rm -rf crypt
rm crypt-1.2.tar.bz2
rm crypt-1.2-1.cygport
rm crypt-1.2-1.cygwin.patch

echo OK!
