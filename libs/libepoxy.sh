#!/bin/sh

cd libepoxy
tar -xf v1.2.tar.gz
cd libepoxy-1.2

cp /opt/share/aclocal/pkg.m4 /share/aclocal/pkg.m4

./autogen.sh
PYTHON=/mingw/opt/bin/python.exe ./configure --prefix=$PREFIX 2>&1 | tee ../../logs/libepoxy-configure.log
make -j $NUMBER_OF_PROCESSORS 2>&1 | tee ../../logs/libepoxy-make.log
make install 2>&1 | tee ../../logs/libepoxy-makeinstall.log

cd ..
rm -rf libepoxy-1.2
