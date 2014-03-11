-------------------------GTK+ build system for Windows-------------------------
This is a package contains things you need to compile the GTK+ and its
dependencies to binary files from the souce code.
-------------------------------------------------------------------------------

CONTENT

/libs
Contains the souce code tarballs of GTK+ and its dependencies, and some shell
scripts used to download and build them.

/MinGW-w64
A Windows port of GCC provided by the MinGW-w64 project.

/MSYS
Minimal SYStem, a collection of GNU utilities to allow you to build
applications which depends on traditional UNIX tools on Windows.

/Other
Some applications and header files needed when building the libraries.

/z_Install
Some batch files to setup a building environment on Windows.
-------------------------------------------------------------------------------

ORIGIN

This build system is inspired by and modified from Tarnyko's gtk3_build_system.
http://www.tarnyko.net/repo/gtk3_build_system/
He always does the great job porting GTK+ to Windows for GTK+ fans all around
the world.
-------------------------------------------------------------------------------

USAGE

Please read /z_Install/INSTRUCTIONS.txt to know how to setup a building
environment and build those packages.
