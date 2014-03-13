@echo off

if not exist 2b_ansi.bat (
    @echo Please run this batch file inside /z_Install. Thanks.
    @pause
    exit /B 1
)

rem These two files are needed by GDK broadway.
copy ..\Other\include\_ansi.h C:\MinGW\i686-w64-mingw32\include
copy ..\Other\include\sys\config.h C:\MinGW\i686-w64-mingw32\include\sys

@pause
