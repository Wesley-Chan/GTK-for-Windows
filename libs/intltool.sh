#!/bin/sh

cd intltool
tar -xf intltool-0.50.2.tar.gz
cd intltool-0.50.2

./configure --prefix=/mingw 2>&1 | tee ../../logs/intltool-configure.log
make -j $NUMBER_OF_PROCESSORS 2>&1 | tee ../../logs/intltool-make.log
make install 2>&1 | tee ../../logs/intltool-makeinstall.log

cd ..
rm -rf intltool-0.50.2
