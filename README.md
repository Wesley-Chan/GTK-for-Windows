# GTK+ for Windows

## News
GTK+ at 3.13.3 and gtkmm at 3.13.3.

Aug. 6th, 2014 update:

Sorry guys. I'm kind of busy these two weeks. I'll update to 3.13.5 as soon as possible.

## Introduction

This project is intended to make the latest [GTK+](http://www.gtk.org) available on Windows.

As everyone knows, the GTK+ Team doesn't release [GTK+ binaries for Windows](http://www.gtk.org/download/win32.php) too often. So when we want to use GTK+ as GUI in our programmes, we have to either use an (really) old official release, or we could just build it and all of its dependencies from scratch.

Now I'm going to ease the pain when building them.

With this project, you can easily download all the tools needed and the source code tarballs from the internet, then again easily build them into binaries for Windows, on your own machine! All what I'm asking from you is just one to two hours. Please refer to the [Wiki pages](https://github.com/Wesley-Chan/GTK-for-Windows/wiki) for more information.

Since this project is always trying to make the latest GTK+ and its dependencies, which may have bugs, able to be built, the binaries comes out from the compiler and linker may be unstable, sometimes on the bleeding edge. It's for preview and test only. No warranty. If you're looking for a more stable one, please consider using the official release.

## Content

This project provide you only scripts. Yes. I don't ship tools and source code to you because of three reasons.

1. Tools and source code tarballs are too large (219MB with everything) to be held online and to be downloaded.

2. This project keeps updated with the latest source code. It will be changing rapidly. It's painful to remove the old source code tarballs and upload/download the new ones.

3. This project is currently hosted on GitHub using Git. Any obsolete and removed files (old tarballs of source code) would still remain on GitHub's server. As time goes by, the project size will become unacceptable huge.

So I suppose the best idea is to keep the size of this project as small as possible and let you download the huge files by yourselves from the nearest mirror site.

* `/libs`

This folder kepps the source code tarballs (but empty for now) and downloading/building scripts.

* `/MinGW-w64`

A Windows port of GCC provided by the MinGW-w64 project. It will be here after you download it.

* `/MSYS`

Minimal SYStem, a collection of GNU utilities to allow you to build applications which depends on traditional UNIX tools on Windows. Also just a folder.

* `/Other`

Some applications and header files needed when building the libraries. And it's likely to be empty too.

* `/z_Install`

Some batch files for setting up a building environment on Windows.

## Origin

This build system is inspired by and modified from [Tarnyko](http://www.tarnyko.net/)'s [gtk3\_build\_system](http://www.tarnyko.net/repo/gtk3_build_system/).

He always does the great job porting GTK+ to Windows for GTK+ fans all around the world.
