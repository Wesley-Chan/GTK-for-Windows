#!/bin/sh

cd gettext
tar -xf $GETTEXT_TARBALL_NAME
cd $GETTEXT_FOLDER_NAME

cd gettext-runtime
./configure --disable-static --with-libiconv-prefix=$PREFIX --enable-threads=windows --enable-relocatable --prefix=$PREFIX 2>&1 | tee ../../../logs/gettext-runtime-configure.log
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
install ./src/msgfmt.exe $PREFIX/bin
install ./src/msgmerge.exe $PREFIX/bin
install ./src/xgettext.exe $PREFIX/bin

cd ../..
rm -rf $GETTEXT_FOLDER_NAME

echo OK!
