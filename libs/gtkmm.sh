#!/bin/sh

cd gtkmm
tar -xf gtkmm-3.13.8.tar.xz
cd gtkmm-3.13.8

./configure --prefix=$PREFIX 2>&1 | tee ../../logs/gtkmm-configure.log
make -j $NUMBER_OF_PROCESSORS 2>&1 | tee ../../logs/gtkmm-make.log
make install 2>&1 | tee ../../logs/gtkmm-makeinstall.log

cd ..
rm -rf gtkmm-3.13.8
