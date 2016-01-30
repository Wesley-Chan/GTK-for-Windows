#!/bin/bash

set -e -o pipefail

cd gdk-pixbuf
tar -xf $GDK_PIXBUF_TARBALL_NAME
cd $GDK_PIXBUF_FOLDER_NAME

./configure --with-included-loaders --prefix=$PREFIX 2>&1 | tee ../../logs/gdk-pixbuf-configure.log
make -j $NUMBER_OF_PROCESSORS 2>&1 | tee ../../logs/gdk-pixbuf-make.log
make install 2>&1 | tee ../../logs/gdk-pixbuf-makeinstall.log

cd ..
rm -rf $GDK_PIXBUF_FOLDER_NAME
