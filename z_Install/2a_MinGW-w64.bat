@echo off

if not exist 2a_MinGW-w64.bat (
    @echo Please run this batch file inside /z_Install. Thanks.
    @pause
    exit /B 1
)

.\Tools\7z x ..\MinGW-w64\GCC\i686-4.8.2-release-win32-sjlj-rt_v3-rev4.7z -oC:\
move C:\mingw32 C:\MinGW

@pause
