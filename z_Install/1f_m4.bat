@echo off

if not exist 1f_m4.bat (
    @echo Please run this batch file inside /z_Install. Thanks.
    @pause
    exit /B 1
)

.\Tools\7z.exe x -o.\cache ..\MSYS\m4-1.4.16-2-msys-1.0.17-bin.tar.lzma
.\Tools\7z.exe x -oC:\msys\ .\cache\m4-1.4.16-2-msys-1.0.17-bin.tar

del .\cache\m4-1.4.16-2-msys-1.0.17-bin.tar

@pause
