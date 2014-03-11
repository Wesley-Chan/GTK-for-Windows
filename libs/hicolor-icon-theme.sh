#!/bin/sh

cd hicolor-icon-theme
tar -xf hicolor-icon-theme-0.13.tar.gz
cd hicolor-icon-theme-0.13

./configure --prefix=$PREFIX 2>&1 | tee ../../logs/hicolor-icon-theme-configure.log
make -j $NUMBER_OF_PROCESSORS 2>&1 | tee ../../logs/hicolor-icon-theme-make.log
make install 2>&1 | tee ../../logs/hicolor-icon-theme-makeinstall.log

cd ..
rm -rf hicolor-icon-theme-0.13
