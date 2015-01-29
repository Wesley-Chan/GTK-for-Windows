@echo off

if not exist 1g_libtool.bat (
    @echo Please run this batch file inside /z_Install. Thanks.
    @pause
    exit /B 1
)

.\Tools\7za.exe x -o.\cache ..\MSYS\libtool-2.4-1-msys-1.0.15-bin.tar.lzma
.\Tools\7za.exe x -oC:\msys\ .\cache\libtool-2.4-1-msys-1.0.15-bin.tar

del .\cache\libtool-2.4-1-msys-1.0.15-bin.tar

@pause
