@echo off

if not exist 1b_XML_Simple.bat (
    @echo Please run this batch file inside /z_Install. Thanks.
    @pause
    exit /B 1
)

rem This is needed to build icon-naming-utils.
.\Tools\7z.exe x ..\Other\XML-Simple-2.20.tar.gz -o.\cache
.\Tools\7z.exe x .\cache\XML-Simple-2.20.tar -o.\cache

if not exist C:\msys\lib\perl5\5.8\XML mkdir C:\msys\lib\perl5\5.8\XML
xcopy /E /Y .\cache\XML-Simple-2.20\lib\XML C:\msys\lib\perl5\5.8\XML

rmdir /S /Q .\cache\XML-Simple-2.20
del .\cache\XML-Simple-2.20.tar

@pause
