#!/bin/sh

cd adwaita-icon-theme
tar -xf adwaita-icon-theme-3.15.1.tar.xz
cd adwaita-icon-theme-3.15.1

./configure --prefix=$PREFIX 2>&1 | tee ../../logs/adwaita-icon-theme-configure.log
make -j $NUMBER_OF_PROCESSORS 2>&1 | tee ../../logs/adwaita-icon-theme-make.log
make install 2>&1 | tee ../../logs/adwaita-icon-theme-makeinstall.log

cd ..
rm -rf adwaita-icon-theme-3.15.1
