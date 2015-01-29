@echo off

if not exist 2c_NASM.bat (
    @echo Please run this batch file inside /z_Install. Thanks.
    @pause
    exit /B 1
)

rem NASM is needed to build libjpeg-turbo.
.\Tools\7za.exe x ..\Other\nasm-2.11.02-win32.zip -o.\cache 
copy .\cache\nasm-2.11.02\nasm.exe C:\MinGW\bin

rmdir /S /Q .\cache\nasm-2.11.02

@pause
