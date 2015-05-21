#!/bin/sh

if [ ! -f DOWNLOAD_ALL.sh ]
then
    echo Please run this script inside /libs. Thanks.
    exit
fi

. ./LIB_INFO.sh

function check_existance()
{
    if [ ! -f $1 ]
    then
        wget --no-check-certificate -O $1 $2
    fi
    if [ "$?" -ne 0 ]; then echo Failed to download $1.; read; exit 1; fi
}

check_existance zlib/$ZLIB_TARBALL_NAME $ZLIB_DL_ADDR

check_existance xz/$XZ_TARBALL_NAME $XZ_DL_ADDR

check_existance expat/$EXPAT_TARBALL_NAME $EXPAT_DL_ADDR

check_existance intltool/$INTLTOOL_TARBALL_NAME $INTLTOOL_DL_ADDR

check_existance libiconv/$LIBICONV_TARBALL_NAME $LIBICONV_DL_ADDR

check_existance libxml2/$LIBXML2_TARBALL_NAME $LIBXML2_DL_ADDR

check_existance gettext/$GETTEXT_TARBALL_NAME $GETTEXT_DL_ADDR

check_existance libffi/$LIBFFI_TARBALL_NAME $LIBFFI_DL_ADDR

check_existance glib/$GLIB_TARBALL_NAME $GLIB_DL_ADDR

check_existance pkg-config/$PKG_CONFIG_TARBALL_NAME $PKG_CONFIG_DL_ADDR

check_existance libcroco/$LIBCROCO_TARBALL_NAME $LIBCROCO_DL_ADDR

check_existance libepoxy/$LIBEPOXY_TARBALL_NAME $LIBEPOXY_DL_ADDR

check_existance util-macros/$UTIL_MACROS_TARBALL_NAME $UTIL_MACROS_DL_ADDR

check_existance atk/$ATK_TARBALL_NAME $ATK_DL_ADDR

check_existance libjasper/$LIBJASPER_TARBALL_NAME $LIBJASPER_DL_ADDR

check_existance libpng/$LIBPNG_TARBALL_NAME $LIBPNG_DL_ADDR

check_existance libjpeg-turbo/$LIBJPEG_TURBO_TARBALL_NAME $LIBJPEG_TURBO_DL_ADDR

check_existance libtiff/$LIBTIFF_TARBALL_NAME $LIBTIFF_DL_ADDR

check_existance gdk-pixbuf/$GDK_PIXBUF_TARBALL_NAME $GDK_PIXBUF_DL_ADDR

check_existance libfreetype/$LIBFREETYPE_TARBALL_NAME $LIBFREETYPE_DL_ADDR

check_existance libfontconfig/$LIBFONTCONFIG_TARBALL_NAME $LIBFONTCONFIG_DL_ADDR

check_existance pixman/$PIXMAN_TARBALL_NAME $PIXMAN_DL_ADDR

check_existance cairo/$CAIRO_TARBALL_NAME $CAIRO_DL_ADDR

check_existance pango/$PANGO_TARBALL_NAME $PANGO_DL_ADDR

check_existance gtk+/$GTK_TARBALL_NAME $GTK_DL_ADDR

check_existance librsvg/$LIBRSVG_TARBALL_NAME $LIBRSVG_DL_ADDR

check_existance icon-naming-utils/$ICON_NAMING_UTILS_TARBALL_NAME $ICON_NAMING_UTILS_DL_ADDR

check_existance adwaita-icon-theme/$ADWAITA_ICON_THEME_TARBALL_NAME $ADWAITA_ICON_THEME_DL_ADDR

check_existance libsigc++/$LIBSIGCPP_TARBALL_NAME $LIBSIGCPP_DL_ADDR

check_existance glibmm/$GLIBMM_TARBALL_NAME $GLIBMM_DL_ADDR

check_existance atkmm/$ATKMM_TARBALL_NAME $ATKMM_DL_ADDR

check_existance cairomm/$CAIROMM_TARBALL_NAME $CAIROMM_DL_ADDR

check_existance pangomm/$PANGOMM_TARBALL_NAME $PANGOMM_DL_ADDR

check_existance gtkmm/$GTKMM_TARBALL_NAME $GTKMM_DL_ADDR
