@setlocal EnableDelayedExpansion
@echo off

rem Check administrative privilege.
net session > nul
if ERRORLEVEL 1 (
    echo Please run this batch file in an administrative command prompt ^(not by right clicking^).
    echo Or you can change your UAC to the lowest level ^(reboot required^).
    echo If you do so, please remember to change it back later.
    pause
    start UserAccountControlSettings.exe
    exit /B 1
)
rem Check correct directory.
if not exist libs (
    echo Please put this batch file in the root directory of the project.
    pause
    exit /B 1
)

if exist cache (
    rmdir /S /Q cache
)
mkdir cache
if not exist MSYS (
    mkdir MSYS
)
if not exist MinGW-w64 (
    mkdir MinGW-w64
)

rem ******************************** MSYS **************************************
set name=MSYS
set folder=MSYS\
set filename=MSYS-20111123.zip
set dladdr=https://sourceforge.net/projects/mingw-w64/files/External%%20binary%%20packages%%20%%28Win64%%20hosted%%29/MSYS%%20%%2832-bit%%29/MSYS-20111123.zip/download
echo | set /p dummyvar=Checking whether MSYS exists...
call:CHECK
if errorlevel 1 pause && exit /B 1
if exist C:\MSYS (
    echo.
    echo *** WARNING ***
    echo You have already installed MSYS to C:\MSYS
    echo You may want to remove it completely before setting up the building
    echo environment again with this script.
    echo Press "r" to remove it and install a new one.
    echo Press "s" to skip to the next package.
    echo Or press any key else to abort.
    set /p input=
    if /i "!input!" EQU "r" (
        rmdir /S /Q C:\MSYS
        goto INSTALL_MSYS
    ) else (
        if /i "!input!" NEQ "s" exit /B 1
    )
) else (
    :INSTALL_MSYS
    Tools\7za.exe x -oC:\ MSYS\!filename! msys 
)
rem ******************************** MSYS **************************************

rem ***************************** findutils ************************************
rem *** Note ***
rem MSYS of MinGW-w64 project lacks find (GNU findutils) in /bin. Coincidentally, 
rem Windows has a find.exe in its system directory. So when libtool tries to
rem call find (GNU), find.exe (Windows) would be called.
set name=findutils
set folder=MSYS\
set filename=findutils-4.4.2-2-msys-1.0.13-bin.tar.lzma
set dladdr=https://sourceforge.net/projects/mingw/files/MSYS/Base/findutils/findutils-4.4.2-2/findutils-4.4.2-2-msys-1.0.13-bin.tar.lzma/download
echo | set /p dummyvar=Checking whether findutils exists...
call:CHECK
if errorlevel 1 pause && exit /B 1
Tools\7za.exe x -ocache MSYS\!filename!
Tools\7za.exe x -oC:\msys\ cache\findutils-4.4.2-2-msys-1.0.13-bin.tar
rem ***************************** findutils ************************************

rem ***************************** autotools ************************************
set name=autoconf
set folder=MSYS\
set filename=autoconf-2.68-1-msys-1.0.17-bin.tar.lzma
set dladdr=https://sourceforge.net/projects/mingw/files/MSYS/msysdev/autoconf/autoconf-2.68-1/autoconf-2.68-1-msys-1.0.17-bin.tar.lzma/download
echo | set /p dummyvar=Checking whether autoconf exists...
call:CHECK
if errorlevel 1 pause && exit /B 1
Tools\7za.exe x -ocache MSYS\!filename!
Tools\7za.exe x -oC:\msys\ cache\autoconf-2.68-1-msys-1.0.17-bin.tar

set name=automake
set folder=MSYS\
set filename=automake-1.11.1-1-msys-1.0.13-bin.tar.lzma
set dladdr=https://sourceforge.net/projects/mingw/files/MSYS/msysdev/automake/automake-1.11.1-1/automake-1.11.1-1-msys-1.0.13-bin.tar.lzma/download
echo | set /p dummyvar=Checking whether automake exists...
call:CHECK
if errorlevel 1 pause && exit /B 1
Tools\7za.exe x -ocache MSYS\!filename!
Tools\7za.exe x -oC:\msys\ cache\automake-1.11.1-1-msys-1.0.13-bin.tar
rem ***************************** autotools ************************************

set name=m4
set folder=MSYS\
set filename=m4-1.4.16-2-msys-1.0.17-bin.tar.lzma
set dladdr=https://sourceforge.net/projects/mingw/files/MSYS/Extension/m4/m4-1.4.16-2/m4-1.4.16-2-msys-1.0.17-bin.tar.lzma/download
echo | set /p dummyvar=Checking whether m4 exists............
call:CHECK
if errorlevel 1 pause && exit /B 1
Tools\7za.exe x -ocache MSYS\!filename!
Tools\7za.exe x -y -oC:\msys\ cache\m4-1.4.16-2-msys-1.0.17-bin.tar

rem ***************************** libtool ************************************
rem *** Note ***
rem These two files are not needed when building packages rather than epoxy.
rem Make sure they have their correct names only when building epoxy.
set name=libtool
set folder=MSYS\
set filename=libtool-2.4-1-msys-1.0.15-bin.tar.lzma
set dladdr=https://sourceforge.net/projects/mingw/files/MSYS/msysdev/libtool/libtool-2.4-1/libtool-2.4-1-msys-1.0.15-bin.tar.lzma/download
echo | set /p dummyvar=Checking whether libtool exists.......
call:CHECK
if errorlevel 1 pause && exit /B 1
Tools\7za.exe x -ocache MSYS\!filename!
Tools\7za.exe x -oC:\msys\ cache\libtool-2.4-1-msys-1.0.15-bin.tar
ren C:\msys\bin\libtool libtool_for_epoxy
ren C:\msys\bin\libtoolize libtoolize_for_epoxy
rem ***************************** libtool ************************************

rem *************************** XML::Simple **********************************
rem This is needed to build icon-naming-utils.
set name="XML::Simple"
set folder=Other\
set filename=XML-Simple-2.22.tar.gz
set dladdr=http://search.cpan.org/CPAN/authors/id/G/GR/GRANTM/XML-Simple-2.22.tar.gz
echo | set /p dummyvar=Checking whether XML::Simple exists...
call:CHECK
if errorlevel 1 pause && exit /B 1
Tools\7za.exe x -ocache Other\!filename!
Tools\7za.exe x -ocache cache\XML-Simple-2.22.tar
if not exist C:\msys\lib\perl5\5.8\XML mkdir C:\msys\lib\perl5\5.8\XML
xcopy /E /Y cache\XML-Simple-2.22\lib\XML C:\msys\lib\perl5\5.8\XML
rem *************************** XML::Simple **********************************

:MinGW
rem ****************************** MinGW-w64 ***********************************
if exist C:\MinGW (
    echo.
    echo *** WARNING ***
    echo You have already installed MinGW-w64 to C:\MinGW
    echo You may want to remove it completely before setting up the building
    echo environment again with this script.
    echo Press "r" to remove it and install a new one.
    echo Press "s" to skip to the next package.
    echo Or press any key else to abort.
    set /p input=
    if /i "!input!" EQU "r" (
        rmdir /S /Q C:\MinGW
    ) else (
        if /i "!input!" NEQ "s" exit /B 1
    )
)
echo.
echo Which compliler do you prefer? ^(64-bit compilers are not tested^)
echo 1. MinGW-w64 GCC 6.2.0, i686,   posix, sjlj
echo 2. MinGW-w64 GCC 6.2.0, i686,   posix, dwarf
echo 3. MinGW-w64 GCC 6.2.0, i686,   win32, sjlj
echo 4. MinGW-w64 GCC 6.2.0, i686,   win32, dwarf
echo 5. MinGW-w64 GCC 6.2.0, x86_64, posix, sjlj
echo 6. MinGW-w64 GCC 6.2.0, x86_64, posix, seh
echo 7. MinGW-w64 GCC 6.2.0, x86_64, win32, sjlj
echo 8. MinGW-w64 GCC 6.2.0, x86_64, win32, seh
set /p compiler=
if %compiler% LSS 1 (
    echo Please choose 1-8.
    goto MinGW
)
if %compiler% GTR 8 (
    echo Please choose 1-8.
    goto MinGW
)
set name=MinGW-w64
set folder=MinGW-w64\
rem 32-bit or 64-bit
if %compiler% GEQ 1 if %compiler% LEQ 4 (
    set filename=i686-6.2.0-release-
    set dladdr=https://sourceforge.net/projects/mingw-w64/files/Toolchains%%20targetting%%20Win32/Personal%%20Builds/mingw-builds/6.2.0/
) else (
    set filename=x86_64-6.2.0-release-
    set dladdr=https://sourceforge.net/projects/mingw-w64/files/Toolchains%%20targetting%%20Win64/Personal%%20Builds/mingw-builds/6.2.0/
)
rem posix or win32
if %compiler% GEQ 1 if %compiler% LEQ 2 (
    set filename=%filename%posix-
    set dladdr=%dladdr%threads-posix/
)
if %compiler% GEQ 5 if %compiler% LEQ 6 (
    set filename=%filename%posix-
    set dladdr=%dladdr%threads-posix/
)
if %compiler% GEQ 3 if %compiler% LEQ 4 (
    set filename=%filename%win32-
    set dladdr=%dladdr%threads-win32/
)
if %compiler% GEQ 7 if %compiler% LEQ 8 (
    set filename=%filename%win32-
    set dladdr=%dladdr%threads-win32/
)
rem sjlj or dwarf or seh
if %compiler% EQU 1 (
    set filename=%filename%sjlj-rt_v5-rev1.7z
    set dladdr=%dladdr%sjlj/!filename!/download
)
if %compiler% EQU 3 (
    set filename=%filename%sjlj-rt_v5-rev1.7z
    set dladdr=%dladdr%sjlj/!filename!/download
)
if %compiler% EQU 5 (
    set filename=%filename%sjlj-rt_v5-rev1.7z
    set dladdr=%dladdr%sjlj/!filename!/download
)
if %compiler% EQU 7 (
    set filename=%filename%sjlj-rt_v5-rev1.7z
    set dladdr=%dladdr%sjlj/!filename!/download
)
if %compiler% EQU 2 (
    set filename=%filename%dwarf-rt_v5-rev1.7z
    set dladdr=%dladdr%dwarf/!filename!/download
)
if %compiler% EQU 4 (
    set filename=%filename%dwarf-rt_v5-rev1.7z
    set dladdr=%dladdr%dwarf/!filename!/download
)
if %compiler% EQU 6 (
    set filename=%filename%seh-rt_v5-rev1.7z
    set dladdr=%dladdr%seh/!filename!/download
)
if %compiler% EQU 8 (
    set filename=%filename%seh-rt_v5-rev1.7z
    set dladdr=%dladdr%seh/!filename!/download
)
echo | set /p dummyvar=Checking whether MinGW-w64 exists.....
call:CHECK
if errorlevel 1 pause && exit /B 1
Tools\7za x -oC:\MinGW MinGW-w64\!filename!
rem ****************************** MinGW-w64 ***********************************

rem ******************************** ansi **************************************
rem These two files are needed by GDK broadway.
if %compiler% GEQ 1 if %compiler% LEQ 4 (
    copy Other\include\_ansi.h C:\MinGW\mingw32\i686-w64-mingw32\include
    copy Other\include\sys\config.h C:\MinGW\mingw32\i686-w64-mingw32\include\sys
) else (
    copy Other\include\_ansi.h C:\MinGW\mingw64\x86_64-w64-mingw32\include
    copy Other\include\sys\config.h C:\MinGW\mingw64\x86_64-w64-mingw32\include\sys
)
rem ******************************** ansi **************************************

rem ****************************** DroidSans ***********************************
Tools\7za.exe x -ocache Other\DroidSans.7z
copy cache\DroidSans.ttf %SYSTEMROOT%\Fonts
regedit /s cache\DroidSans.reg
rem ****************************** DroidSans ***********************************

rem Some settings for MSYS.
set PREFIX=opt
mkdir c:\msys\%PREFIX%
mkdir c:\msys\%PREFIX%\bin
mkdir c:\msys\%PREFIX%\etc
mkdir c:\msys\%PREFIX%\include
mkdir c:\msys\%PREFIX%\lib
mkdir c:\msys\%PREFIX%\lib\pkgconfig
mkdir c:\msys\%PREFIX%\share
echo export PREFIX="/%PREFIX%">> c:\msys\etc\profile
echo export PATH="$PATH:/%PREFIX%/bin">> c:\msys\etc\profile
echo export CFLAGS="-I/%PREFIX%/include -I/usr/local/include">> c:\msys\etc\profile
echo export CPPFLAGS="-I/%PREFIX%/include -I/usr/local/include">> c:\msys\etc\profile
echo export LDFLAGS="-L/%PREFIX%/lib -L/usr/local/lib">> c:\msys\etc\profile
echo export PKG_CONFIG_PATH="/%PREFIX%/lib/pkgconfig:/usr/local/lib/pkgconfig">> c:\msys\etc\profile
echo export XDG_DATA_DIRS="/%PREFIX%/share">> c:\msys\etc\profile
rem 32-bit or 64-bit
if %compiler% GEQ 1 if %compiler% LEQ 4 (
    echo C:/MinGW/mingw32        /mingw>> c:\msys\etc\fstab
) else (
    echo C:/MinGW/mingw64        /mingw>> c:\msys\etc\fstab
)

rem Finish
echo.
echo Building environment setup complete.
echo *Note: If this is the first time the font DroidSans is installed, please
echo reboot your system before it takes effect.

pause
rmdir /S /Q cache
exit /B

:CHECK
if exist %folder%%filename% (
    echo yes
) else (
    echo no
    echo %name% is not found. Now I'm trying to download it.
    echo Tools\wget.exe --trust-server-names -P %folder% %dladdr%
    Tools\wget.exe --no-check-certificate --trust-server-names -P %folder% %dladdr%
    if !ERRORLEVEL! EQU 0 (
        echo Download complete.
    ) else (
        echo Sorry. There's a problem while downloading %name%
        echo Please try again later or download it manually.
    )
)
goto:EOF
