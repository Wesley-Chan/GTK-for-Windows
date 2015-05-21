#!/bin/sh

cd icon-naming-utils
tar -xf $ICON_NAMING_UTILS_TARBALL_NAME
cd $ICON_NAMING_UTILS_FOLDER_NAME

./configure --prefix=$PREFIX 2>&1 | tee ../../logs/icon-naming-utils-configure.log
make -j $NUMBER_OF_PROCESSORS 2>&1 | tee ../../logs/icon-naming-utils-make.log
make install 2>&1 | tee ../../logs/icon-naming-utils-makeinstall.log

cd ..
rm -rf $ICON_NAMING_UTILS_FOLDER_NAME
