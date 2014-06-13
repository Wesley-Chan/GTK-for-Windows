#!/bin/sh

cd atk
tar -xf atk-2.13.2.tar.xz

#Fix the atk.def problem.
patch -p0 < atk-2.13.2-def.patch

cd atk-2.13.2

./configure --with-python=/mingw/opt/bin/python.exe --prefix=$PREFIX 2>&1 | tee ../../logs/atk-configure.log
make -j $NUMBER_OF_PROCESSORS 2>&1 | tee ../../logs/atk-make.log
make install 2>&1 | tee ../../logs/atk-makeinstall.log

cd ..
rm -rf atk-2.13.2
