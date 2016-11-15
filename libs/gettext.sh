#!/bin/bash

set -e -o pipefail

cd gettext
tar -xf $GETTEXT_TARBALL_NAME
cd $GETTEXT_FOLDER_NAME

cd gettext-runtime
./configure --disable-static --with-libintl-prefix=$PREFIX --with-libxml2-prefix=$PREFIX --with-libiconv-prefix=$PREFIX --enable-threads=windows --enable-relocatable --prefix=$PREFIX 2>&1 | tee ../../../logs/gettext-runtime-configure.log
make -j $NUMBER_OF_PROCESSORS 2>&1 | tee ../../../logs/gettext-runtime-make.log
make install 2>&1 | tee ../../../logs/gettext-runtime-makeinstall.log

cd ..

cd gettext-tools
./configure --disable-shared --with-libintl-prefix=$PREFIX --with-libxml2-prefix=$PREFIX --with-libiconv-prefix=$PREFIX --enable-threads=windows --enable-relocatable 2>&1 | tee ../../../logs/gettext-tools-configure.log
make -j $NUMBER_OF_PROCESSORS -C intl 2>&1 | tee ../../../logs/gettext-tools-make.log
make -j $NUMBER_OF_PROCESSORS -C gnulib-lib 2>&1 | tee -a ../../../logs/gettext-tools-make.log
make -j $NUMBER_OF_PROCESSORS -C src msgfmt.exe 2>&1 | tee -a ../../../logs/gettext-tools-make.log
make -j $NUMBER_OF_PROCESSORS -C src msgmerge.exe 2>&1 | tee -a ../../../logs/gettext-tools-make.log
make -j $NUMBER_OF_PROCESSORS -C src xgettext.exe 2>&1 | tee -a ../../../logs/gettext-tools-make.log
install ./src/msgfmt.exe /usr/local/bin
install ./src/msgmerge.exe /usr/local/bin
install ./src/xgettext.exe /usr/local/bin

cd ../..
rm -rf $GETTEXT_FOLDER_NAME

echo OK!
