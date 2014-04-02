#!/bin/sh

cd atk
tar -xf atk-2.12.0.tar.xz
cd atk-2.12.0

./configure --disable-static --with-python=/mingw/opt/bin/python.exe --prefix=$PREFIX 2>&1 | tee ../../logs/atk-configure.log
make -j $NUMBER_OF_PROCESSORS 2>&1 | tee ../../logs/atk-make.log
make install 2>&1 | tee ../../logs/atk-makeinstall.log

cd ..
rm -rf atk-2.12.0
