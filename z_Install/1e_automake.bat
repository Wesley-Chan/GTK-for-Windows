@echo off

if not exist 1e_automake.bat (
    @echo Please run this batch file inside /z_Install. Thanks.
    @pause
    exit /B 1
)

.\Tools\7z.exe x -o.\cache ..\MSYS\automake-1.11.1-1-msys-1.0.13-bin.tar.lzma
.\Tools\7z.exe x -oC:\msys\ .\cache\automake-1.11.1-1-msys-1.0.13-bin.tar

del .\cache\automake-1.11.1-1-msys-1.0.13-bin.tar

@pause
