@echo off

if not exist 2a_MinGW-w64.bat (
    @echo Please run this batch file inside /z_Install. Thanks.
    @pause
    exit /B 1
)

.\Tools\7za x ..\MinGW-w64\GCC\i686-5.3.0-release-posix-sjlj-rt_v4-rev0.7z -oC:\
move C:\mingw32 C:\MinGW

@pause
