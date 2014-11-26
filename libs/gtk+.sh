#!/bin/sh

cd gtk+
tar -xf gtk+-3.15.2.tar.xz
cd gtk+-3.15.2

./configure --enable-win32-backend --enable-broadway-backend --with-included-immodules --prefix=$PREFIX 2>&1 | tee ../../logs/gtk+-configure.log
make -j $NUMBER_OF_PROCESSORS 2>&1 | tee ../../logs/gtk+-make.log

#The root cause of this bug is unknown.
#I remember I solved it once in 3.14.0.
#But unfortunately I've forgotten that.
#So let's do it in a dirty way.
cp gtk/.libs/gtk-update-icon-cache.exe gtk/

make install 2>&1 | tee ../../logs/gtk+-makeinstall.log

cd ..
rm -rf gtk+-3.15.2
