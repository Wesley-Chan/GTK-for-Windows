@setlocal EnableDelayedExpansion

@echo off

if not exist 0_DOWNLOAD_ALL.bat (
    @echo Please run this batch file inside /z_Install. Thanks.
    @pause
    exit /B 1
)

set name=MSYS
set folder=..\MSYS\
set filename=MSYS-20111123.zip
set dladdr=http://sourceforge.net/projects/mingw-w64/files/External%%20binary%%20packages%%20%%28Win64%%20hosted%%29/MSYS%%20%%2832-bit%%29/MSYS-20111123.zip/download
echo | set /p dummyvar=Checking whether MSYS exists..........
call:CHECK
if errorlevel 1 pause && exit /B 1

set name=findutils
set folder=..\MSYS\
set filename=findutils-4.4.2-2-msys-1.0.13-bin.tar.lzma
set dladdr=http://sourceforge.net/projects/mingw/files/MSYS/Base/findutils/findutils-4.4.2-2/findutils-4.4.2-2-msys-1.0.13-bin.tar.lzma/download
echo | set /p dummyvar=Checking whether findutils exists.....
call:CHECK
if errorlevel 1 pause && exit /B 1

set name=autoconf
set folder=..\MSYS\
set filename=autoconf-2.68-1-msys-1.0.17-bin.tar.lzma
set dladdr=http://sourceforge.net/projects/mingw/files/MSYS/msysdev/autoconf/autoconf-2.68-1/autoconf-2.68-1-msys-1.0.17-bin.tar.lzma/download
echo | set /p dummyvar=Checking whether autoconf exists......
call:CHECK
if errorlevel 1 pause && exit /B 1

set name=automake
set folder=..\MSYS\
set filename=automake-1.11.1-1-msys-1.0.13-bin.tar.lzma
set dladdr=http://sourceforge.net/projects/mingw/files/MSYS/msysdev/automake/automake-1.11.1-1/automake-1.11.1-1-msys-1.0.13-bin.tar.lzma/download
echo | set /p dummyvar=Checking whether automake exists......
call:CHECK
if errorlevel 1 pause && exit /B 1

set name=m4
set folder=..\MSYS\
set filename=m4-1.4.16-2-msys-1.0.17-bin.tar.lzma
set dladdr=http://sourceforge.net/projects/mingw/files/MSYS/Extension/m4/m4-1.4.16-2/m4-1.4.16-2-msys-1.0.17-bin.tar.lzma/download
echo | set /p dummyvar=Checking whether m4 exists............
call:CHECK
if errorlevel 1 pause && exit /B 1

set name=libtool
set folder=..\MSYS\
set filename=libtool-2.4-1-msys-1.0.15-bin.tar.lzma
set dladdr=http://sourceforge.net/projects/mingw/files/MSYS/msysdev/libtool/libtool-2.4-1/libtool-2.4-1-msys-1.0.15-bin.tar.lzma/download
echo | set /p dummyvar=Checking whether libtool exists.......
call:CHECK
if errorlevel 1 pause && exit /B 1

set name=MinGW-w64
set folder=..\MinGW-w64\GCC\
set filename=i686-5.3.0-release-posix-sjlj-rt_v4-rev0.7z
set dladdr=http://sourceforge.net/projects/mingw-w64/files/Toolchains%%20targetting%%20Win32/Personal%%20Builds/mingw-builds/5.3.0/threads-posix/sjlj/i686-5.3.0-release-posix-sjlj-rt_v4-rev0.7z/download
echo | set /p dummyvar=Checking whether MinGW-w64 exists.....
call:CHECK
if errorlevel 1 pause && exit /B 1

set name="XML::Simple"
set folder=..\Other\
set filename=XML-Simple-2.20.tar.gz
set dladdr=http://search.cpan.org/CPAN/authors/id/G/GR/GRANTM/XML-Simple-2.20.tar.gz
echo | set /p dummyvar=Checking whether XML::Simple exists...
call:CHECK
if errorlevel 1 pause && exit /B 1

set name="NASM"
set folder=..\Other\
set filename=nasm-2.11.08-win32.zip
set dladdr=http://www.nasm.us/pub/nasm/releasebuilds/2.11.08/win32/nasm-2.11.08-win32.zip
echo | set /p dummyvar=Checking whether NASM exists..........
call:CHECK
if errorlevel 1 pause && exit /B 1

@pause
exit /B

:CHECK
if exist %folder%%filename% (
    echo yes
) else (
    echo no
    echo %name% is not found. Now I'm trying to download it.
    echo .\Tools\wget.exe --trust-server-names -P %folder% %dladdr%
    .\Tools\wget.exe --trust-server-names -P %folder% %dladdr%
    if !ERRORLEVEL! EQU 0 (
        echo Download complete.
    ) else (
        echo Sorry. There's a problem while downloading %name%
        echo Please try again later or download it manually.
    )
)
goto:EOF
