#!/bin/sh

cd glib
tar -xf glib-2.42.0.tar.xz
cd glib-2.42.0

#To avoid using pkg-config.
export LIBFFI_CFLAGS=-I"$PREFIX/lib/libffi-3.1/include"
export LIBFFI_LIBS=-lffi

./configure --with-python=/mingw/opt/bin/python.exe --with-libiconv=gnu --with-pcre=internal --with-threads=win32 --prefix=$PREFIX 2>&1 | tee ../../logs/glib-configure.log
make -j $NUMBER_OF_PROCESSORS 2>&1 | tee ../../logs/glib-make.log
make install 2>&1 | tee ../../logs/glib-makeinstall.log

cd ..
rm -rf glib-2.42.0
