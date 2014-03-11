@echo off

rem NASM is needed to build libjpeg-turbo.
.\Tools\7z.exe x ..\Other\nasm-2.11.02-win32.zip -o.\cache 
copy .\cache\nasm-2.11.02\nasm.exe C:\MinGW\bin

rmdir /S /Q .\cache\nasm-2.11.02

@pause
