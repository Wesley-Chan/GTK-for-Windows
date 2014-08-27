#!/bin/sh

cd gtk+
tar -xf gtk+-3.13.7.tar.xz
cd gtk+-3.13.7

./configure --enable-win32-backend --enable-broadway-backend --with-included-immodules --prefix=$PREFIX 2>&1 | tee ../../logs/gtk+-configure.log
make -j $NUMBER_OF_PROCESSORS 2>&1 | tee ../../logs/gtk+-make.log
make install 2>&1 | tee ../../logs/gtk+-makeinstall.log

cd ..
rm -rf gtk+-3.13.7
