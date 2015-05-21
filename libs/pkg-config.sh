#!/bin/sh

cd pkg-config
tar -xf $PKG_CONFIG_TARBALL_NAME
cd $PKG_CONFIG_FOLDER_NAME

#To detect the formerly installed GLib.
export GLIB_CFLAGS="-I$PREFIX/include/glib-2.0 -I$PREFIX/lib/glib-2.0/include"
export GLIB_LIBS=-lglib-2.0

./configure --disable-static --prefix=$PREFIX 2>&1 | tee ../../logs/pkg-config-configure.log
make -j $NUMBER_OF_PROCESSORS 2>&1 | tee ../../logs/pkg-config-make.log
make install 2>&1 | tee ../../logs/pkg-config-makeinstall.log

cd ..
rm -rf $PKG_CONFIG_FOLDER_NAME
