@echo off

if not exist 1g_libtool.bat (
    @echo Please run this batch file inside /z_Install. Thanks.
    @pause
    exit /B 1
)

.\Tools\7za.exe x -o.\cache ..\MSYS\libtool-2.4-1-msys-1.0.15-bin.tar.lzma
.\Tools\7za.exe x -oC:\msys\ .\cache\libtool-2.4-1-msys-1.0.15-bin.tar

@rem These two files are not needed (or even be harmful) when building packages rather than epoxy.
@rem However, epoxy needs them.
@rem Change their names to something else, and change back when building epoxy.
ren C:\msys\bin\libtool libtool_for_epoxy
ren C:\msys\bin\libtoolize libtoolize_for_epoxy
@rem But when finished building epoxy, make sure their names are wrong, to prevent errors.

del .\cache\libtool-2.4-1-msys-1.0.15-bin.tar

@pause
