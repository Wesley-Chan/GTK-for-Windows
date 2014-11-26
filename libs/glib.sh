#!/bin/sh

cd glib
tar -xf glib-2.43.1.tar.xz
cd glib-2.43.1

#To avoid using pkg-config.
export LIBFFI_CFLAGS=-I"$PREFIX/lib/libffi-3.1/include"
export LIBFFI_LIBS=-lffi

./configure --with-python=/mingw/opt/bin/python.exe --with-libiconv=gnu --with-pcre=internal --with-threads=posix --prefix=$PREFIX 2>&1 | tee ../../logs/glib-configure.log

#Fix this problem.
#https://bugzilla.gnome.org/show_bug.cgi?id=739656
sed -i "s/\/\* #undef HAVE_IF_INDEXTONAME \*\//#define HAVE_IF_INDEXTONAME 1/g" config.h
sed -i "s/\/\* #undef HAVE_IF_NAMETOINDEX \*\//#define HAVE_IF_NAMETOINDEX 1/g" config.h

make -j $NUMBER_OF_PROCESSORS 2>&1 | tee ../../logs/glib-make.log
make install 2>&1 | tee ../../logs/glib-makeinstall.log

cd ..
rm -rf glib-2.43.1
