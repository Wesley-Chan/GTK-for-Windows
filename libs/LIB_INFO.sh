#!/bin/bash

ZLIB_VERSION=1.2.8
ZLIB_DL_ADDR=https://prdownloads.sourceforge.net/libpng/zlib-$ZLIB_VERSION.tar.xz
export ZLIB_TARBALL_NAME=$(basename "$ZLIB_DL_ADDR")
export ZLIB_FOLDER_NAME="${ZLIB_TARBALL_NAME%.*.*}"

XZ_VERSION=5.2.2
XZ_DL_ADDR=http://tukaani.org/xz/xz-$XZ_VERSION.tar.xz
export XZ_TARBALL_NAME=$(basename "$XZ_DL_ADDR")
export XZ_FOLDER_NAME="${XZ_TARBALL_NAME%.*.*}"

EXPAT_VERSION=2.2.0
EXPAT_DL_ADDR=https://sourceforge.net/projects/expat/files/expat/$EXPAT_VERSION/expat-$EXPAT_VERSION.tar.bz2
export EXPAT_TARBALL_NAME=$(basename "$EXPAT_DL_ADDR")
export EXPAT_FOLDER_NAME="${EXPAT_TARBALL_NAME%.*.*}"

INTLTOOL_VERSION=0.51.0
INTLTOOL_DL_ADDR=https://launchpad.net/intltool/trunk/0.51.0/+download/intltool-$INTLTOOL_VERSION.tar.gz
export INTLTOOL_TARBALL_NAME=$(basename "$INTLTOOL_DL_ADDR")
export INTLTOOL_FOLDER_NAME="${INTLTOOL_TARBALL_NAME%.*.*}"

LIBICONV_VERSION=1.14
LIBICONV_DL_ADDR=http://ftpmirror.gnu.org/libiconv/libiconv-$LIBICONV_VERSION.tar.gz
export LIBICONV_TARBALL_NAME=$(basename "$LIBICONV_DL_ADDR")
export LIBICONV_FOLDER_NAME="${LIBICONV_TARBALL_NAME%.*.*}"

LIBXML2_VERSION=2.9.4
LIBXML2_DL_ADDR=ftp://xmlsoft.org/libxml2/libxml2-$LIBXML2_VERSION.tar.gz
export LIBXML2_TARBALL_NAME=$(basename "$LIBXML2_DL_ADDR")
export LIBXML2_FOLDER_NAME="${LIBXML2_TARBALL_NAME%.*.*}"

GETTEXT_VERSION=0.19.8
GETTEXT_DL_ADDR=http://ftpmirror.gnu.org/gettext/gettext-$GETTEXT_VERSION.tar.xz
export GETTEXT_TARBALL_NAME=$(basename "$GETTEXT_DL_ADDR")
export GETTEXT_FOLDER_NAME="${GETTEXT_TARBALL_NAME%.*.*}"

LIBFFI_VERSION=3.2.1
LIBFFI_DL_ADDR=ftp://sourceware.org/pub/libffi/libffi-$LIBFFI_VERSION.tar.gz
export LIBFFI_TARBALL_NAME=$(basename "$LIBFFI_DL_ADDR")
export LIBFFI_FOLDER_NAME="${LIBFFI_TARBALL_NAME%.*.*}"

GLIB_VERSION=2.51.0
GLIB_DL_ADDR=https://download.gnome.org/sources/glib/${GLIB_VERSION%.*}/glib-$GLIB_VERSION.tar.xz
export GLIB_TARBALL_NAME=$(basename "$GLIB_DL_ADDR")
export GLIB_FOLDER_NAME="${GLIB_TARBALL_NAME%.*.*}"

PKG_CONFIG_VERSION=0.29.1
PKG_CONFIG_DL_ADDR=http://pkgconfig.freedesktop.org/releases/pkg-config-$PKG_CONFIG_VERSION.tar.gz
export PKG_CONFIG_TARBALL_NAME=$(basename "$PKG_CONFIG_DL_ADDR")
export PKG_CONFIG_FOLDER_NAME="${PKG_CONFIG_TARBALL_NAME%.*.*}"

LIBCROCO_VERSION=0.6.11
LIBCROCO_DL_ADDR=https://download.gnome.org/sources/libcroco/${LIBCROCO_VERSION%.*}/libcroco-$LIBCROCO_VERSION.tar.xz
export LIBCROCO_TARBALL_NAME=$(basename "$LIBCROCO_DL_ADDR")
export LIBCROCO_FOLDER_NAME="${LIBCROCO_TARBALL_NAME%.*.*}"

UTIL_MACROS_VERSION=1.17
UTIL_MACROS_DL_ADDR=http://www.x.org/releases/X11R7.7/src/util/util-macros-$UTIL_MACROS_VERSION.tar.bz2
export UTIL_MACROS_TARBALL_NAME=$(basename "$UTIL_MACROS_DL_ADDR")
export UTIL_MACROS_FOLDER_NAME="${UTIL_MACROS_TARBALL_NAME%.*.*}"

LIBEPOXY_VERSION=1.3.1
LIBEPOXY_DL_ADDR=https://github.com/anholt/libepoxy/archive/v$LIBEPOXY_VERSION.tar.gz
export LIBEPOXY_TARBALL_NAME=$(basename "$LIBEPOXY_DL_ADDR")
export LIBEPOXY_FOLDER_NAME=libepoxy-$LIBEPOXY_VERSION

ATK_VERSION=2.20.0
ATK_DL_ADDR=https://download.gnome.org/sources/atk/${ATK_VERSION%.*}/atk-$ATK_VERSION.tar.xz
export ATK_TARBALL_NAME=$(basename "$ATK_DL_ADDR")
export ATK_FOLDER_NAME="${ATK_TARBALL_NAME%.*.*}"

LIBPNG_VERSION=1.6.26
LIBPNG_DL_ADDR=https://sourceforge.net/projects/libpng/files/libpng16/older-releases/$LIBPNG_VERSION/libpng-$LIBPNG_VERSION.tar.xz
export LIBPNG_TARBALL_NAME=$(basename "$LIBPNG_DL_ADDR")
export LIBPNG_FOLDER_NAME="${LIBPNG_TARBALL_NAME%.*.*}"

GDK_PIXBUF_VERSION=2.36.0
GDK_PIXBUF_DL_ADDR=https://download.gnome.org/sources/gdk-pixbuf/${GDK_PIXBUF_VERSION%.*}/gdk-pixbuf-$GDK_PIXBUF_VERSION.tar.xz
export GDK_PIXBUF_TARBALL_NAME=$(basename "$GDK_PIXBUF_DL_ADDR")
export GDK_PIXBUF_FOLDER_NAME="${GDK_PIXBUF_TARBALL_NAME%.*.*}"

LIBFREETYPE_VERSION=2.7
LIBFREETYPE_DL_ADDR=https://sourceforge.net/projects/freetype/files/freetype2/$LIBFREETYPE_VERSION/freetype-$LIBFREETYPE_VERSION.tar.bz2
export LIBFREETYPE_TARBALL_NAME=$(basename "$LIBFREETYPE_DL_ADDR")
export LIBFREETYPE_FOLDER_NAME="${LIBFREETYPE_TARBALL_NAME%.*.*}"

LIBFONTCONFIG_VERSION=2.12.0
LIBFONTCONFIG_DL_ADDR=http://www.freedesktop.org/software/fontconfig/release/fontconfig-$LIBFONTCONFIG_VERSION.tar.bz2
export LIBFONTCONFIG_TARBALL_NAME=$(basename "$LIBFONTCONFIG_DL_ADDR")
export LIBFONTCONFIG_FOLDER_NAME="${LIBFONTCONFIG_TARBALL_NAME%.*.*}"

PIXMAN_VERSION=0.34.0
PIXMAN_DL_ADDR=http://cairographics.org/releases/pixman-$PIXMAN_VERSION.tar.gz
export PIXMAN_TARBALL_NAME=$(basename "$PIXMAN_DL_ADDR")
export PIXMAN_FOLDER_NAME="${PIXMAN_TARBALL_NAME%.*.*}"

CAIRO_VERSION=1.15.2
CAIRO_DL_ADDR=http://cairographics.org/snapshots/cairo-$CAIRO_VERSION.tar.xz
export CAIRO_TARBALL_NAME=$(basename "$CAIRO_DL_ADDR")
export CAIRO_FOLDER_NAME="${CAIRO_TARBALL_NAME%.*.*}"

PANGO_VERSION=1.40.3
PANGO_DL_ADDR=https://download.gnome.org/sources/pango/${PANGO_VERSION%.*}/pango-$PANGO_VERSION.tar.xz
export PANGO_TARBALL_NAME=$(basename "$PANGO_DL_ADDR")
export PANGO_FOLDER_NAME="${PANGO_TARBALL_NAME%.*.*}"

GTK_VERSION=3.22.0
GTK_DL_ADDR=https://download.gnome.org/sources/gtk+/${GTK_VERSION%.*}/gtk+-$GTK_VERSION.tar.xz
export GTK_TARBALL_NAME=$(basename "$GTK_DL_ADDR")
export GTK_FOLDER_NAME="${GTK_TARBALL_NAME%.*.*}"

LIBRSVG_VERSION=2.40.16
LIBRSVG_DL_ADDR=https://download.gnome.org/sources/librsvg/${LIBRSVG_VERSION%.*}/librsvg-$LIBRSVG_VERSION.tar.xz
export LIBRSVG_TARBALL_NAME=$(basename "$LIBRSVG_DL_ADDR")
export LIBRSVG_FOLDER_NAME="${LIBRSVG_TARBALL_NAME%.*.*}"

ICON_NAMING_UTILS_VERSION=0.8.90
ICON_NAMING_UTILS_DL_ADDR=http://tango.freedesktop.org/releases/icon-naming-utils-$ICON_NAMING_UTILS_VERSION.tar.bz2
export ICON_NAMING_UTILS_TARBALL_NAME=$(basename "$ICON_NAMING_UTILS_DL_ADDR")
export ICON_NAMING_UTILS_FOLDER_NAME="${ICON_NAMING_UTILS_TARBALL_NAME%.*.*}"

ADWAITA_VERSION=3.22.0
ADWAITA_ICON_THEME_DL_ADDR=https://download.gnome.org/sources/adwaita-icon-theme/${ADWAITA_VERSION%.*}/adwaita-icon-theme-$ADWAITA_VERSION.tar.xz
export ADWAITA_ICON_THEME_TARBALL_NAME=$(basename "$ADWAITA_ICON_THEME_DL_ADDR")
export ADWAITA_FOLDER_NAME="${ADWAITA_ICON_THEME_TARBALL_NAME%.*.*}"

LIBSIGCPP_VERSION=2.10.0
LIBSIGCPP_DL_ADDR=https://download.gnome.org/sources/libsigc++/${LIBSIGCPP_VERSION%.*}/libsigc++-$LIBSIGCPP_VERSION.tar.xz
export LIBSIGCPP_TARBALL_NAME=$(basename "$LIBSIGCPP_DL_ADDR")
export LIBSIGCPP_FOLDER_NAME="${LIBSIGCPP_TARBALL_NAME%.*.*}"

GLIBMM_VERSION=2.50.0
GLIBMM_DL_ADDR=https://download.gnome.org/sources/glibmm/${GLIBMM_VERSION%.*}/glibmm-$GLIBMM_VERSION.tar.xz
export GLIBMM_TARBALL_NAME=$(basename "$GLIBMM_DL_ADDR")
export GLIBMM_FOLDER_NAME="${GLIBMM_TARBALL_NAME%.*.*}"

ATKMM_VERSION=2.24.2
ATKMM_DL_ADDR=https://download.gnome.org/sources/atkmm/${ATKMM_VERSION%.*}/atkmm-$ATKMM_VERSION.tar.xz
export ATKMM_TARBALL_NAME=$(basename "$ATKMM_DL_ADDR")
export ATKMM_FOLDER_NAME="${ATKMM_TARBALL_NAME%.*.*}"

CAIROMM_VERSION=1.12.0
CAIROMM_DL_ADDR=http://cairographics.org/releases/cairomm-$CAIROMM_VERSION.tar.gz
export CAIROMM_TARBALL_NAME=$(basename "$CAIROMM_DL_ADDR")
export CAIROMM_FOLDER_NAME="${CAIROMM_TARBALL_NAME%.*.*}"

PANGOMM_VERSION=2.40.1
PANGOMM_DL_ADDR=https://download.gnome.org/sources/pangomm/${PANGOMM_VERSION%.*}/pangomm-$PANGOMM_VERSION.tar.xz
export PANGOMM_TARBALL_NAME=$(basename "$PANGOMM_DL_ADDR")
export PANGOMM_FOLDER_NAME="${PANGOMM_TARBALL_NAME%.*.*}"

GTKMM_VERSION=3.22.0
GTKMM_DL_ADDR=https://download.gnome.org/sources/gtkmm/${GTKMM_VERSION%.*}/gtkmm-$GTKMM_VERSION.tar.xz
export GTKMM_TARBALL_NAME=$(basename "$GTKMM_DL_ADDR")
export GTKMM_FOLDER_NAME="${GTKMM_TARBALL_NAME%.*.*}"
