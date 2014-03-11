#!/bin/sh

cd librsvg
tar -xf librsvg-2.40.1.tar.xz

#For portability.
patch -p0 < librsvg-2.40.1-rsvg-base.c.patch

cd librsvg-2.40.1

./configure --enable-introspection=no --prefix=$PREFIX 2>&1 | tee ../../logs/librsvg-configure.log
make -j $NUMBER_OF_PROCESSORS 2>&1 | tee ../../logs/librsvg-make.log
make install 2>&1 | tee ../../logs/librsvg-makeinstall.log

cd ..
rm -rf librsvg-2.40.1
