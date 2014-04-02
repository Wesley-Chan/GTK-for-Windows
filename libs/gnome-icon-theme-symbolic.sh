#!/bin/sh

cd gnome-icon-theme-symbolic
tar -xf gnome-icon-theme-symbolic-3.12.0.tar.xz
cd gnome-icon-theme-symbolic-3.12.0

./configure --prefix=$PREFIX 2>&1 | tee ../../logs/gnome-icon-theme-symbolic-configure.log
make -j $NUMBER_OF_PROCESSORS 2>&1 | tee ../../logs/gnome-icon-theme-symbolic-make.log
make install 2>&1 | tee ../../logs/gnome-icon-theme-symbolic-makeinstall.log

cd ..
rm -rf gnome-icon-theme-symbolic-3.12.0
