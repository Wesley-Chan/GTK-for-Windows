#!/bin/sh

cd gettext
tar -xf gettext-0.18.3.2.tar.gz
cd gettext-0.18.3.2

cd gettext-runtime
./configure --prefix=$PREFIX --with-libiconv-prefix=$PREFIX --enable-threads=windows --enable-relocatable 2>&1 | tee ../../../logs/gettext-runtime-configure.log
make -j $NUMBER_OF_PROCESSORS 2>&1 | tee ../../../logs/gettext-runtime-make.log
make install 2>&1 | tee ../../../logs/gettext-runtime-makeinstall.log

cd ..

cd gettext-tools
./configure --prefix=$PREFIX --with-libiconv-prefix=$PREFIX --with-libxml2-prefix=$PREFIX --with-included-libcroco --with-included-glib --enable-threads=windows --enable-relocatable --disable-shared 2>&1 | tee ../../../logs/gettext-tools-configure.log
make -j $NUMBER_OF_PROCESSORS -C intl 2>&1 | tee ../../../logs/gettext-tools-make.log
make -j $NUMBER_OF_PROCESSORS -C gnulib-lib 2>&1 | tee -a ../../../logs/gettext-tools-make.log
make -j $NUMBER_OF_PROCESSORS -C src msgfmt.exe 2>&1 | tee -a ../../../logs/gettext-tools-make.log
make -j $NUMBER_OF_PROCESSORS -C src msgmerge.exe 2>&1 | tee -a ../../../logs/gettext-tools-make.log
make -j $NUMBER_OF_PROCESSORS -C src xgettext.exe 2>&1 | tee -a ../../../logs/gettext-tools-make.log
cp ./src/msgfmt.exe /mingw/bin/msgfmt.exe
cp ./src/msgmerge.exe /mingw/bin/msgmerge.exe
cp ./src/xgettext.exe /mingw/bin/xgettext.exe

cd ../..
rm -rf gettext-0.18.3.2

echo OK!
