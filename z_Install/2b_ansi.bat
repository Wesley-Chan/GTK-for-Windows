@echo off

rem These two files are needed by GDK broadway.
copy ..\Other\include\_ansi.h C:\MinGW\i686-w64-mingw32\include
copy ..\Other\include\sys\config.h C:\MinGW\i686-w64-mingw32\include\sys

@pause
