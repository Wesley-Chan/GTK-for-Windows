@echo off

if not exist 4_DroidSans.bat (
    @echo Please run this batch file inside /z_Install. Thanks.
    @pause
    exit /B 1
)

net session
if ERRORLEVEL 1 (
    @echo Please run this batch file in an administrative command prompt ^(not by right clicking^).
    @echo.
    @echo Or you can change your UAC to the lowest level ^(reboot required^).
    @echo If you do so, please remember to change it back later.
    @pause
    start UserAccountControlSettings.exe
    exit /B 1
)

.\Tools\7za.exe x -o.\cache ..\Other\DroidSans.7z
copy .\cache\DroidSans.ttf %SYSTEMROOT%\Fonts
regedit /s .\cache\DroidSans.reg

del .\cache\DroidSans.ttf .\cache\DroidSans.reg .\cache\Apache_License.txt

@pause
