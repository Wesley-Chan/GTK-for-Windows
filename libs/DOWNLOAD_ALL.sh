#!/bin/sh

if [ ! -f DOWNLOAD_ALL.sh ]
then
    echo Please run this script inside /libs. Thanks.
    exit
fi

ZLIB_DL_ADDR=http://prdownloads.sourceforge.net/libpng/zlib-1.2.8.tar.xz?download
ZLIB_NAME=$(basename "$ZLIB_DL_ADDR" ?download)

XZ_DL_ADDR=http://tukaani.org/xz/xz-5.0.5.tar.xz
XZ_NAME=$(basename "$XZ_DL_ADDR")

EXPAT_DL_ADDR=http://sourceforge.net/projects/expat/files/expat/2.1.0/expat-2.1.0.tar.gz?download
EXPAT_NAME=$(basename "$EXPAT_DL_ADDR" ?download)

INTLTOOL_DL_ADDR=https://launchpad.net/intltool/trunk/0.50.2/+download/intltool-0.50.2.tar.gz
INTLTOOL_NAME=$(basename "$INTLTOOL_DL_ADDR")

LIBICONV_DL_ADDR=http://ftpmirror.gnu.org/libiconv/libiconv-1.14.tar.gz
LIBICONV_NAME=$(basename "$LIBICONV_DL_ADDR")

LIBXML2_DL_ADDR=ftp://gd.tuwien.ac.at/pub/libxml/libxml2-2.9.1.tar.gz
LIBXML2_NAME=$(basename "$LIBXML2_DL_ADDR")

GETTEXT_DL_ADDR=http://ftpmirror.gnu.org/gettext/gettext-0.18.3.2.tar.gz
GETTEXT_NAME=$(basename "$GETTEXT_DL_ADDR")

LIBFFI_DL_ADDR=ftp://sourceware.org/pub/libffi/libffi-3.0.13.tar.gz
LIBFFI_NAME=$(basename "$LIBFFI_DL_ADDR")

GLIB_DL_ADDR=https://download.gnome.org/sources/glib/2.39/glib-2.39.91.tar.xz
GLIB_NAME=$(basename "$GLIB_DL_ADDR")

PKG_CONFIG_DL_ADDR=http://pkgconfig.freedesktop.org/releases/pkg-config-0.28.tar.gz
PKG_CONFIG_NAME=$(basename "$PKG_CONFIG_DL_ADDR")

LIBCROCO_DL_ADDR=https://download.gnome.org/sources/libcroco/0.6/libcroco-0.6.8.tar.xz
LIBCROCO_NAME=$(basename "$LIBCROCO_DL_ADDR")

ATK_DL_ADDR=https://download.gnome.org/sources/atk/2.11/atk-2.11.90.tar.xz
ATK_NAME=$(basename "$ATK_DL_ADDR")

LIBJASPER_DL_ADDR=http://www.ece.uvic.ca/~frodo/jasper/software/jasper-1.900.1.zip
LIBJASPER_NAME=$(basename "$LIBJASPER_DL_ADDR")

LIBPNG_DL_ADDR=http://prdownloads.sourceforge.net/libpng/libpng-1.6.9.tar.xz?download
LIBPNG_NAME=$(basename "$LIBPNG_DL_ADDR" ?download)

LIBJPEG_TURBO_DL_ADDR=http://sourceforge.net/projects/libjpeg-turbo/files/1.3.0/libjpeg-turbo-1.3.0.tar.gz?download
LIBJPEG_TURBO_NAME=$(basename "$LIBJPEG_TURBO_DL_ADDR" ?download)

LIBTIFF_DL_ADDR=http://download.osgeo.org/libtiff/tiff-4.0.3.tar.gz
LIBTIFF_NAME=$(basename "$LIBTIFF_DL_ADDR")

GDK_PIXBUF_DL_ADDR=https://download.gnome.org/sources/gdk-pixbuf/2.30/gdk-pixbuf-2.30.6.tar.xz
GDK_PIXBUF_NAME=$(basename "$GDK_PIXBUF_DL_ADDR")

LIBFREETYPE_DL_ADDR=http://sourceforge.net/projects/freetype/files/freetype2/2.5.3/freetype-2.5.3.tar.bz2?download
LIBFREETYPE_NAME=$(basename "$LIBFREETYPE_DL_ADDR" ?download)

LIBFONTCONFIG_DL_ADDR=http://www.freedesktop.org/software/fontconfig/release/fontconfig-2.11.0.tar.bz2
LIBFONTCONFIG_NAME=$(basename "$LIBFONTCONFIG_DL_ADDR")

PIXMAN_DL_ADDR=http://cairographics.org/releases/pixman-0.32.4.tar.gz
PIXMAN_NAME=$(basename "$PIXMAN_DL_ADDR")

CAIRO_DL_ADDR=http://cairographics.org/releases/cairo-1.12.16.tar.xz
CAIRO_NAME=$(basename "$CAIRO_DL_ADDR")

PANGO_DL_ADDR=https://download.gnome.org/sources/pango/1.36/pango-1.36.2.tar.xz
PANGO_NAME=$(basename "$PANGO_DL_ADDR")

GTK_DL_ADDR=https://download.gnome.org/sources/gtk+/3.11/gtk+-3.11.9.tar.xz
GTK_NAME=$(basename "$GTK_DL_ADDR")

LIBRSVG_DL_ADDR=https://download.gnome.org/sources/librsvg/2.40/librsvg-2.40.1.tar.xz
LIBRSVG_NAME=$(basename "$LIBRSVG_DL_ADDR")

ICON_NAMING_UTILS_DL_ADDR=http://tango.freedesktop.org/releases/icon-naming-utils-0.8.90.tar.bz2
ICON_NAMING_UTILS_NAME=$(basename "$ICON_NAMING_UTILS_DL_ADDR")

HICOLOR_ICON_THEME_DL_ADDR=http://icon-theme.freedesktop.org/releases/hicolor-icon-theme-0.13.tar.gz
HICOLOR_ICON_THEME_NAME=$(basename "$HICOLOR_ICON_THEME_DL_ADDR")

GNOME_ICON_THEME_DL_ADDR=https://download.gnome.org/sources/gnome-icon-theme/3.11/gnome-icon-theme-3.11.5.tar.xz
GNOME_ICON_THEME_NAME=$(basename "$GNOME_ICON_THEME_DL_ADDR")

GNOME_ICON_THEME_SYMBOLIC_DL_ADDR=https://download.gnome.org/sources/gnome-icon-theme-symbolic/3.11/gnome-icon-theme-symbolic-3.11.91.tar.xz
GNOME_ICON_THEME_SYMBOLIC_NAME=$(basename "$GNOME_ICON_THEME_SYMBOLIC_DL_ADDR")

function check_existance()
{
    if [ ! -f $1 ]
    then
        wget --no-check-certificate $2
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

cd hicolor-icon-theme
check_existance $HICOLOR_ICON_THEME_NAME $HICOLOR_ICON_THEME_DL_ADDR
cd ..

cd gnome-icon-theme
check_existance $GNOME_ICON_THEME_NAME $GNOME_ICON_THEME_DL_ADDR
cd ..

cd gnome-icon-theme-symbolic
check_existance $GNOME_ICON_THEME_SYMBOLIC_NAME $GNOME_ICON_THEME_SYMBOLIC_DL_ADDR
cd ..
