#!/bin/sh

cd libepoxy
tar -xf $LIBEPOXY_TARBALL_NAME
cd $LIBEPOXY_FOLDER_NAME

cp /opt/share/aclocal/pkg.m4 /share/aclocal/pkg.m4

if [ ! -z "/bin/libtool" ]
then
    mv /bin/libtool_for_epoxy /bin/libtool
fi

if [ ! -z "/bin/libtoolize" ]
then
    mv /bin/libtoolize_for_epoxy /bin/libtoolize
fi

libtoolize
./autogen.sh
PYTHON=/mingw/opt/bin/python.exe ./configure --prefix=$PREFIX 2>&1 | tee ../../logs/libepoxy-configure.log
make -j $NUMBER_OF_PROCESSORS 2>&1 | tee ../../logs/libepoxy-make.log
make install 2>&1 | tee ../../logs/libepoxy-makeinstall.log

# Change the name of libtool back.
# Otherwise, it could cause hanging when building GTK+.
mv /bin/libtool /bin/libtool_for_epoxy
mv /bin/libtoolize /bin/libtoolize_for_epoxy

cd ..
rm -rf $LIBEPOXY_FOLDER_NAME
