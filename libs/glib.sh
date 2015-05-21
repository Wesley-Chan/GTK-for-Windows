#!/bin/sh

cd glib
tar -xf $GLIB_TARBALL_NAME
cd $GLIB_FOLDER_NAME

#To avoid using pkg-config.
export LIBFFI_CFLAGS=-I"$PREFIX/lib/$LIBFFI_FOLDER_NAME/include"
export LIBFFI_LIBS=-lffi

./configure --with-python=/mingw/opt/bin/python.exe --with-libiconv=gnu --with-pcre=internal --with-threads=posix --prefix=$PREFIX 2>&1 | tee ../../logs/glib-configure.log
make -j $NUMBER_OF_PROCESSORS 2>&1 | tee ../../logs/glib-make.log
make install 2>&1 | tee ../../logs/glib-makeinstall.log

cd ..
rm -rf $GLIB_FOLDER_NAME
