@echo off

if not exist 1d_autoconf.bat (
    @echo Please run this batch file inside /z_Install. Thanks.
    @pause
    exit /B 1
)

.\Tools\7z.exe x -o.\cache ..\MSYS\autoconf-2.68-1-msys-1.0.17-bin.tar.lzma
.\Tools\7z.exe x -oC:\msys\ .\cache\autoconf-2.68-1-msys-1.0.17-bin.tar

del .\cache\autoconf-2.68-1-msys-1.0.17-bin.tar

@pause
