#!/bin/sh

cd gtk+
tar -xf gtk+-3.11.8.tar.xz
cd gtk+-3.11.8

./configure --enable-static --enable-win32-backend --enable-broadway-backend --with-included-immodules --prefix=$PREFIX 2>&1 | tee ../../logs/gtk3-configure.log

#Patching build to avoid gdk.def and gtk.def...
cd ..
patch -p0 < gtk+-3.11.8-gxkdef-win32.patch
cd gtk+-3.11.8

make -j $NUMBER_OF_PROCESSORS 2>&1 | tee ../../logs/gtk3-make.log
make install 2>&1 | tee ../../logs/gtk3-makeinstall.log

cd ..
rm -rf gtk+-3.11.8
