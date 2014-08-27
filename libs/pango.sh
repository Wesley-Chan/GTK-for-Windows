#!/bin/sh

cd pango
tar -xf pango-1.36.6.tar.xz
cd pango-1.36.6

./configure --with-included-modules=yes --with-dynamic-modules=yes --prefix=$PREFIX 2>&1 | tee ../../logs/pango-configure.log
make -j $NUMBER_OF_PROCESSORS 2>&1 | tee ../../logs/pango-make.log
make install 2>&1 | tee ../../logs/pango-makeinstall.log

cd ..
rm -rf pango-1.36.6
