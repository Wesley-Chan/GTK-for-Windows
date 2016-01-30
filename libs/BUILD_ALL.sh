#!/bin/bash

set -e

if [ ! -f BUILD_ALL.sh ]
then
    echo Please run this script inside /libs. Thanks.
    exit
fi

net session
if [ $? != 0 ];then
    echo Please run the MSYS shell as Administrator.
    echo
    echo Or you can change your UAC to the lowest level\(reboot required\).
    echo If you do so, please remember to change it back later.
    start UserAccountControlSettings.exe
    exit
fi

. ./LIB_INFO.sh

./zlib.sh
./xz.sh
./expat.sh
./intltool.sh

./libiconv.sh
./libxml2.sh
./gettext.sh

./libffi.sh
./glib.sh
./pkg-config.sh
./libcroco.sh

./util-macros.sh
./libepoxy.sh

./atk.sh
./libjasper.sh

./libpng.sh
./libjpeg-turbo.sh
./libtiff.sh
./gdk-pixbuf.sh

./libfreetype.sh
./libfontconfig.sh

./pixman.sh
./cairo.sh
./pango.sh

./gtk+.sh
./librsvg.sh

./icon-naming-utils.sh
./adwaita-icon-theme.sh

echo GTK+ has been built. Continue to build gtkmm? [y/n]
read ans
if [ $ans == 'n' ]; then exit 0; fi

./libsigc++.sh
./glibmm.sh
./atkmm.sh
./cairomm.sh
./pangomm.sh
./gtkmm.sh
