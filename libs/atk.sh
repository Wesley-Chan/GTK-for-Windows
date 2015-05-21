#!/bin/sh

cd atk
tar -xf $ATK_TARBALL_NAME
cd $ATK_FOLDER_NAME

./configure --with-python=/mingw/opt/bin/python.exe --prefix=$PREFIX 2>&1 | tee ../../logs/atk-configure.log
make -j $NUMBER_OF_PROCESSORS 2>&1 | tee ../../logs/atk-make.log
make install 2>&1 | tee ../../logs/atk-makeinstall.log

cd ..
rm -rf $ATK_FOLDER_NAME
