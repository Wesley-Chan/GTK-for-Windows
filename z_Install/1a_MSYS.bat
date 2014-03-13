@echo off

if not exist 1a_MSYS.bat (
    @echo Please run this batch file inside /z_Install. Thanks.
    @pause
    exit /B 1
)

.\Tools\7z.exe x -oC:\ ..\MSYS\MSYS-20111123.* msys

@echo.
@echo *******************************************
@echo **    Please answer 'y' and then 'n'.    **
@echo *******************************************
@echo.

C:\msys\bin\sh.exe C:\msys\postinstall\pi.sh

@pause
