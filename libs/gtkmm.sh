#!/bin/sh

cd gtkmm
tar -xf $GTKMM_TARBALL_NAME
cd $GTKMM_FOLDER_NAME

./configure --prefix=$PREFIX 2>&1 | tee ../../logs/gtkmm-configure.log
make -j $NUMBER_OF_PROCESSORS 2>&1 | tee ../../logs/gtkmm-make.log
make install 2>&1 | tee ../../logs/gtkmm-makeinstall.log

cd ..
rm -rf $GTKMM_FOLDER_NAME
