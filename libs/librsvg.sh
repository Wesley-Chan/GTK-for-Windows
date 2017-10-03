#!/bin/bash

set -e -o pipefail

cd librsvg
tar -xf $LIBRSVG_TARBALL_NAME
cd $LIBRSVG_FOLDER_NAME

# This bug is introduced after GLib 2.53.
patch -p0 < ../0001-do-not-generate-librsvg-enum-type.patch

./configure --disable-static --enable-introspection=no 2>&1 | tee ../../logs/librsvg-configure.log
make -j $NUMBER_OF_PROCESSORS 2>&1 | tee ../../logs/librsvg-make.log
make install 2>&1 | tee ../../logs/librsvg-makeinstall.log

cd ..
rm -rf $LIBRSVG_FOLDER_NAME
