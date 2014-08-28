#!/bin/sh

if [ ! -f BUILD_ALL.sh ]
then
    echo Please run this script inside /libs. Thanks.
    exit
fi

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
