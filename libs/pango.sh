#!/bin/sh

cd pango
tar -xf pango-1.36.2.tar.xz
cd pango-1.36.2

echo Avoid undefined reference to g_object_unref errors.
export LDFLAGS="$LDFLAGS -lgobject-2.0 -lgmodule-2.0"

./configure --enable-static --disable-shared --with-included-modules=yes --with-dynamic-modules=yes --prefix=$PREFIX 2>&1 | tee ../../logs/pango-configure.log
make -j $NUMBER_OF_PROCESSORS 2>&1 | tee ../../logs/pango-make.log
make install 2>&1 | tee ../../logs/pango-makeinstall.log

cd ..
rm -rf pango-1.36.2
