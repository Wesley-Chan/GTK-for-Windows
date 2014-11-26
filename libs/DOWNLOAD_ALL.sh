#!/bin/sh

if [ ! -f DOWNLOAD_ALL.sh ]
then
    echo Please run this script inside /libs. Thanks.
    exit
fi

ZLIB_DL_ADDR=http://prdownloads.sourceforge.net/libpng/zlib-1.2.8.tar.xz
ZLIB_NAME=$(basename "$ZLIB_DL_ADDR")

XZ_DL_ADDR=http://tukaani.org/xz/xz-5.0.7.tar.xz
XZ_NAME=$(basename "$XZ_DL_ADDR")

EXPAT_DL_ADDR=http://sourceforge.net/projects/expat/files/expat/2.1.0/expat-2.1.0.tar.gz
EXPAT_NAME=$(basename "$EXPAT_DL_ADDR")

INTLTOOL_DL_ADDR=https://launchpad.net/intltool/trunk/0.50.2/+download/intltool-0.50.2.tar.gz
INTLTOOL_NAME=$(basename "$INTLTOOL_DL_ADDR")

LIBICONV_DL_ADDR=http://ftpmirror.gnu.org/libiconv/libiconv-1.14.tar.gz
LIBICONV_NAME=$(basename "$LIBICONV_DL_ADDR")

LIBXML2_DL_ADDR=ftp://gd.tuwien.ac.at/pub/libxml/libxml2-2.9.2.tar.gz
LIBXML2_NAME=$(basename "$LIBXML2_DL_ADDR")

GETTEXT_DL_ADDR=http://ftpmirror.gnu.org/gettext/gettext-0.19.3.tar.xz
GETTEXT_NAME=$(basename "$GETTEXT_DL_ADDR")

LIBFFI_DL_ADDR=ftp://sourceware.org/pub/libffi/libffi-3.1.tar.gz
LIBFFI_NAME=$(basename "$LIBFFI_DL_ADDR")

GLIB_DL_ADDR=https://download.gnome.org/sources/glib/2.43/glib-2.43.1.tar.xz
GLIB_NAME=$(basename "$GLIB_DL_ADDR")

PKG_CONFIG_DL_ADDR=http://pkgconfig.freedesktop.org/releases/pkg-config-0.28.tar.gz
PKG_CONFIG_NAME=$(basename "$PKG_CONFIG_DL_ADDR")

LIBCROCO_DL_ADDR=https://download.gnome.org/sources/libcroco/0.6/libcroco-0.6.8.tar.xz
LIBCROCO_NAME=$(basename "$LIBCROCO_DL_ADDR")

UTIL_MACROS_DL_ADDR=http://www.x.org/releases/X11R7.7/src/util/util-macros-1.17.tar.bz2
UTIL_MACROS_NAME=$(basename "$UTIL_MACROS_DL_ADDR")

LIBEPOXY_DL_ADDR=https://github.com/anholt/libepoxy/archive/v1.2.tar.gz
LIBEPOXY_NAME=$(basename "$LIBEPOXY_DL_ADDR")

ATK_DL_ADDR=https://download.gnome.org/sources/atk/2.15/atk-2.15.2.tar.xz
ATK_NAME=$(basename "$ATK_DL_ADDR")

LIBJASPER_DL_ADDR=http://www.ece.uvic.ca/~frodo/jasper/software/jasper-1.900.1.zip
LIBJASPER_NAME=$(basename "$LIBJASPER_DL_ADDR")

LIBPNG_DL_ADDR=http://sourceforge.net/projects/libpng/files/libpng16/1.6.14/libpng-1.6.14.tar.xz
LIBPNG_NAME=$(basename "$LIBPNG_DL_ADDR")

LIBJPEG_TURBO_DL_ADDR=http://sourceforge.net/projects/libjpeg-turbo/files/1.3.1/libjpeg-turbo-1.3.1.tar.gz
LIBJPEG_TURBO_NAME=$(basename "$LIBJPEG_TURBO_DL_ADDR")

LIBTIFF_DL_ADDR=http://download.osgeo.org/libtiff/tiff-4.0.3.tar.gz
LIBTIFF_NAME=$(basename "$LIBTIFF_DL_ADDR")

GDK_PIXBUF_DL_ADDR=https://download.gnome.org/sources/gdk-pixbuf/2.31/gdk-pixbuf-2.31.2.tar.xz
GDK_PIXBUF_NAME=$(basename "$GDK_PIXBUF_DL_ADDR")

LIBFREETYPE_DL_ADDR=http://sourceforge.net/projects/freetype/files/freetype2/2.5.3/freetype-2.5.3.tar.bz2
LIBFREETYPE_NAME=$(basename "$LIBFREETYPE_DL_ADDR")

LIBFONTCONFIG_DL_ADDR=http://www.freedesktop.org/software/fontconfig/release/fontconfig-2.11.1.tar.bz2
LIBFONTCONFIG_NAME=$(basename "$LIBFONTCONFIG_DL_ADDR")

PIXMAN_DL_ADDR=http://cairographics.org/releases/pixman-0.32.6.tar.gz
PIXMAN_NAME=$(basename "$PIXMAN_DL_ADDR")

CAIRO_DL_ADDR=http://cairographics.org/releases/cairo-1.14.0.tar.xz
CAIRO_NAME=$(basename "$CAIRO_DL_ADDR")

PANGO_DL_ADDR=https://download.gnome.org/sources/pango/1.36/pango-1.36.8.tar.xz
PANGO_NAME=$(basename "$PANGO_DL_ADDR")

GTK_DL_ADDR=https://download.gnome.org/sources/gtk+/3.15/gtk+-3.15.2.tar.xz
GTK_NAME=$(basename "$GTK_DL_ADDR")

LIBRSVG_DL_ADDR=https://download.gnome.org/sources/librsvg/2.40/librsvg-2.40.5.tar.xz
LIBRSVG_NAME=$(basename "$LIBRSVG_DL_ADDR")

ICON_NAMING_UTILS_DL_ADDR=http://tango.freedesktop.org/releases/icon-naming-utils-0.8.90.tar.bz2
ICON_NAMING_UTILS_NAME=$(basename "$ICON_NAMING_UTILS_DL_ADDR")

ADWAITA_ICON_THEME_DL_ADDR=https://download.gnome.org/sources/adwaita-icon-theme/3.15/adwaita-icon-theme-3.15.1.tar.xz
ADWAITA_ICON_THEME_NAME=$(basename "$ADWAITA_ICON_THEME_DL_ADDR")

LIBSIGCPP_DL_ADDR=https://download.gnome.org/sources/libsigc++/2.3/libsigc++-2.3.1.tar.xz
LIBSIGCPP_NAME=$(basename "$LIBSIGCPP_DL_ADDR")

GLIBMM_DL_ADDR=https://download.gnome.org/sources/glibmm/2.42/glibmm-2.42.0.tar.xz
GLIBMM_NAME=$(basename "$GLIBMM_DL_ADDR")

ATKMM_DL_ADDR=https://download.gnome.org/sources/atkmm/2.22/atkmm-2.22.7.tar.xz
ATKMM_NAME=$(basename "$ATKMM_DL_ADDR")

CAIROMM_DL_ADDR=http://cairographics.org/releases/cairomm-1.11.2.tar.gz
CAIROMM_NAME=$(basename "$CAIROMM_DL_ADDR")

PANGOMM_DL_ADDR=https://download.gnome.org/sources/pangomm/2.34/pangomm-2.34.0.tar.xz
PANGOMM_NAME=$(basename "$PANGOMM_DL_ADDR")

GTKMM_DL_ADDR=https://download.gnome.org/sources/gtkmm/3.14/gtkmm-3.14.0.tar.xz
GTKMM_NAME=$(basename "$GTKMM_DL_ADDR")

function check_existance()
{
    if [ ! -f $1 ]
    then
        wget --no-check-certificate -O $1 $2
    fi
}

cd zlib
check_existance $ZLIB_NAME $ZLIB_DL_ADDR
cd ..

cd xz
check_existance $XZ_NAME $XZ_DL_ADDR
cd ..

cd expat
check_existance $EXPAT_NAME $EXPAT_DL_ADDR
cd ..

cd intltool
check_existance $INTLTOOL_NAME $INTLTOOL_DL_ADDR
cd ..

cd libiconv
check_existance $LIBICONV_NAME $LIBICONV_DL_ADDR
cd ..

cd libxml2
check_existance $LIBXML2_NAME $LIBXML2_DL_ADDR
cd ..

cd gettext
check_existance $GETTEXT_NAME $GETTEXT_DL_ADDR
cd ..

cd libffi
check_existance $LIBFFI_NAME $LIBFFI_DL_ADDR
cd ..

cd glib
check_existance $GLIB_NAME $GLIB_DL_ADDR
cd ..

cd pkg-config
check_existance $PKG_CONFIG_NAME $PKG_CONFIG_DL_ADDR
cd ..

cd libcroco
check_existance $LIBCROCO_NAME $LIBCROCO_DL_ADDR
cd ..

cd libepoxy
check_existance $EPOXY_NAME $EPOXY_DL_ADDR
cd ..

cd util-macros
check_existance $UTIL_MACROS_NAME $UTIL_MACROS_DL_ADDR
cd ..

cd atk
check_existance $ATK_NAME $ATK_DL_ADDR
cd ..

cd libjasper
check_existance $LIBJASPER_NAME $LIBJASPER_DL_ADDR
cd ..

cd libpng
check_existance $LIBPNG_NAME $LIBPNG_DL_ADDR
cd ..

cd libjpeg-turbo
check_existance $LIBJPEG_TURBO_NAME $LIBJPEG_TURBO_DL_ADDR
cd ..

cd libtiff
check_existance $LIBTIFF_NAME $LIBTIFF_DL_ADDR
cd ..

cd gdk-pixbuf
check_existance $GDK_PIXBUF_NAME $GDK_PIXBUF_DL_ADDR
cd ..

cd libfreetype
check_existance $LIBFREETYPE_NAME $LIBFREETYPE_DL_ADDR
cd ..

cd libfontconfig
check_existance $LIBFONTCONFIG_NAME $LIBFONTCONFIG_DL_ADDR
cd ..

cd pixman
check_existance $PIXMAN_NAME $PIXMAN_DL_ADDR
cd ..

cd cairo
check_existance $CAIRO_NAME $CAIRO_DL_ADDR
cd ..

cd pango
check_existance $PANGO_NAME $PANGO_DL_ADDR
cd ..

cd gtk+
check_existance $GTK_NAME $GTK_DL_ADDR
cd ..

cd librsvg
check_existance $LIBRSVG_NAME $LIBRSVG_DL_ADDR
cd ..

cd icon-naming-utils
check_existance $ICON_NAMING_UTILS_NAME $ICON_NAMING_UTILS_DL_ADDR
cd ..

cd adwaita-icon-theme
check_existance $ADWAITA_ICON_THEME_NAME $ADWAITA_ICON_THEME_DL_ADDR
cd ..

cd libsigc++
check_existance $LIBSIGCPP_NAME $LIBSIGCPP_DL_ADDR
cd ..

cd glibmm
check_existance $GLIBMM_NAME $GLIBMM_DL_ADDR
cd ..

cd atkmm
check_existance $ATKMM_NAME $ATKMM_DL_ADDR
cd ..

cd cairomm
check_existance $CAIROMM_NAME $CAIROMM_DL_ADDR
cd ..

cd pangomm
check_existance $PANGOMM_NAME $PANGOMM_DL_ADDR
cd ..

cd gtkmm
check_existance $GTKMM_NAME $GTKMM_DL_ADDR
cd ..
