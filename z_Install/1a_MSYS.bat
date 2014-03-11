@echo off

.\Tools\7z.exe x -oC:\ ..\MSYS\MSYS-20111123.* msys

@echo.
@echo *******************************************
@echo **    Please answer 'y' and then 'n'.    **
@echo *******************************************
@echo.

C:\msys\bin\sh.exe C:\msys\postinstall\pi.sh

@pause
