#!/bin/sh

cd gnome-icon-theme
tar -xf gnome-icon-theme-3.12.0.tar.xz
cd gnome-icon-theme-3.12.0

#Solve some linking problems.
export XML_SIMPLE_PREFERRED_PARSER=XML::Parser

./configure --prefix=$PREFIX 2>&1 | tee ../../logs/gnome-icon-theme-configure.log
make -j $NUMBER_OF_PROCESSORS 2>&1 | tee ../../logs/gnome-icon-theme-make.log
make install 2>&1 | tee ../../logs/gnome-icon-theme-makeinstall.log

cd ..
rm -rf gnome-icon-theme-3.12.0
