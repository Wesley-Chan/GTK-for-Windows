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

@echo Going to run 1b_XMLSimple.bat
call 1b_XML_Simple.bat

@echo Going to run 1c_findutils.bat
call 1c_findutils.bat

@echo Going to run 1d_autoconf.bat
call 1d_autoconf.bat

@echo Going to run 1e_automake.bat
call 1e_automake.bat

@echo Going to run 1f_m4.bat
call 1f_m4.bat

@echo Going to run 1g_libtool.bat
call 1g_libtool.bat

@echo Going to run 2a_MinGW-w64.bat
call 2a_MinGW-w64.bat

@echo Going to run 2b_MinGW-ansi.bat
call 2b_ansi.bat

@echo Going to run 2c_MinGW-nasm.ba
call 2c_NASM.bat

@echo Going to run 3_MSYS-initbuild.bat
call 3_MSYS-initbuild.bat

@echo Going to run 4_DroidSans.bat
call 4_DroidSans.bat
