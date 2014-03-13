@echo off

if not exist INSTALL_ALL.bat (
    @echo Please run this batch file inside /z_Install. Thanks.
    @pause
    exit /B 1
)

@echo Going to run 0_DOWNLOAD_ALL.bat
call 0_DOWNLOAD_ALL.bat
if errorlevel 1 exit /B 1

@echo Going to run 1a_MSYS.bat
call 1a_MSYS.bat

@echo Going to run 1b_MSYS_find.bat
call 1b_findutils.bat

@echo Going to run 1c_MSYS_XMLSimple.bat
call 1c_XML_Simple.bat

@echo Going to run 2a_MinGW-w64.bat
call 2a_MinGW-w64.bat

@echo Going to run 2b_MinGW-ansi.bat
call 2b_ansi.bat

@echo Going to run 2c_MinGW-nasm.ba
call 2c_NASM.bat

@echo Going to run 3_MSYS-initbuild.bat
call 3_MSYS-initbuild.bat
