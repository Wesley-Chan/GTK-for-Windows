# GTK+ for Windows

## Version
GTK+  - 3.22.21

gtkmm - 3.22.2

## Introduction

The goal of this project is to make the latest [GTK+](http://www.gtk.org) and [gtkmm](http://www.gtkmm.org) available on Windows.

The GTK+ team no longer provides binaries (3.6.4 to be specific) for Windows since sometime in 2015 Q3. You have to build it with MSYS2 as the [official guide](http://www.gtk.org/download/windows.php) states. If you happen to not like MSYS2, or you want a more recent version, here are some automated scripts which helps you download all the stuff you need and compile them for you.

Please refer to the [Wiki pages](https://github.com/Wesley-Chan/GTK-for-Windows/wiki) for more information.

## Content

* `libs`

This folder will keep the source code tarballs after being downloaded. Downloading/building scripts are in here too.

* `Other`

Some applications and header files needed when building the libraries.

* `Tools`

wget.exe for downloading and 7za.exe for extracting.

* `setup.bat`

This batch file sets up a building environment for you.

* `LICENSE.md`

License.

* `README.md`

The file you're reading.

## Origin

This build system is inspired by and modified from [Tarnyko](http://www.tarnyko.net/)'s [gtk3\_build\_system](http://www.tarnyko.net/repo/gtk3_build_system/).

He was always doing the great job porting GTK+ to Windows for GTK+ fans all around the world.

## How to Use

Please click here: https://github.com/Wesley-Chan/GTK-for-Windows/wiki/Instructions
