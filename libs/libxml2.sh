#!/bin/sh

cd libxml2
tar -xf libxml2-2.9.2.tar.gz
cd libxml2-2.9.2

#To avoid using pkg-config.
export LZMA_LIBS=-llzma

./configure --disable-static --prefix=$PREFIX 2>&1 | tee ../../logs/libxml2-configure.log
make -j $NUMBER_OF_PROCESSORS 2>&1 | tee ../../logs/libxml2-make.log
make install 2>&1 | tee ../../logs/libxml2-makeinstall.log

cd ..
rm -rf libxml2-2.9.2
