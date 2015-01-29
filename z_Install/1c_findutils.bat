@echo off

if not exist 1c_findutils.bat (
    @echo Please run this batch file inside /z_Install. Thanks.
    @pause
    exit /B 1
)

rem ***IMPORTANT***
rem MSYS of MinGW-w64 project lacks find(GNU findutils) in /bin. Coincidentally, 
rem Windows has a find.exe in its system directory. So, when libtool tries to
rem call find(GNU), actually, find.exe(Windows) would be called.
rem This can lead to serious(and mysterious) problems while linking. Some may
rem fail, and some may appear successful but badly failed indeed because you
rem are totally unaware of it.
rem To solve this, simply use find.exe in the package listed below provided
rem by the MinGW(not MinGW-w64) project.

.\Tools\7za.exe x -o.\cache ..\MSYS\findutils-4.4.2-2-msys-1.0.13-bin.tar.lzma
.\Tools\7za.exe x -oC:\msys\ .\cache\findutils-4.4.2-2-msys-1.0.13-bin.tar

del .\cache\findutils-4.4.2-2-msys-1.0.13-bin.tar

@pause
