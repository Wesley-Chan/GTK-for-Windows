# GTK+ for Windows

## News
GTK+ at 3.19.7 and gtkmm at 3.19.6.

## Introduction

This goal of this project is to make the latest [GTK+](http://www.gtk.org) and [gtkmm](http://www.gtkmm.org) available on Windows.

The GTK+ team no longer provides binaries for Windows since sometime in 2015 Q3 (and it was a very old version). So when we want to use GTK+ in our programmes, we have to pull it via MSYS2 (see [here](http://www.gtk.org/download/windows.php)), or build it and all its dependencies from scratch.

Now here are some automated scripts which helps you download all the stuff you need and compile them for you.

Please refer to the [Wiki pages](https://github.com/Wesley-Chan/GTK-for-Windows/wiki) for more information.

## Content

Let's see what we got in these four folders.

* `libs`

This folder keeps the source code tarballs (but empty for now) and downloading/building scripts.

* `MinGW-w64`

A Windows port of GCC provided by the MinGW-w64 project. It will be here after you download it.

* `MSYS`

Minimal SYStem, a collection of GNU utilities allowing you to build applications which depends on traditional UNIX tools on Windows. Also just a folder.

* `Other`

Some applications and header files needed when building the libraries. And it's likely to be empty too.

* `z_Install`

Some batch files for setting up a building environment on Windows.

## Origin

This build system is inspired by and modified from [Tarnyko](http://www.tarnyko.net/)'s [gtk3\_build\_system](http://www.tarnyko.net/repo/gtk3_build_system/).

He was always doing the great job porting GTK+ to Windows for GTK+ fans all around the world.

## How to Use

Please click here: https://github.com/Wesley-Chan/GTK-for-Windows/wiki/Instructions
