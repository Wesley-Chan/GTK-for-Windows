#!/bin/sh

cd librsvg
tar -xf $LIBRSVG_TARBALL_NAME
cd $LIBRSVG_FOLDER_NAME

./configure --disable-static --enable-introspection=no --prefix=$PREFIX 2>&1 | tee ../../logs/librsvg-configure.log
make -j $NUMBER_OF_PROCESSORS 2>&1 | tee ../../logs/librsvg-make.log
make install 2>&1 | tee ../../logs/librsvg-makeinstall.log

cd ..
rm -rf $LIBRSVG_FOLDER_NAME
