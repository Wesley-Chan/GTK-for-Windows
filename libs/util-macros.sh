#!/bin/sh

cd util-macros
tar -xf util-macros-1.17.tar.bz2
cd util-macros-1.17

./configure --prefix=/usr 2>&1 | tee ../../logs/util-macros-configure.log
make install 2>&1 | tee ../../logs/util-macros-makeinstall.log

cd ..
rm -rf util-macros-1.17
