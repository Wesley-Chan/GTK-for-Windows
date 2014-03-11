set PREFIX=opt

mkdir c:\msys\%PREFIX%
mkdir c:\msys\%PREFIX%\bin
mkdir c:\msys\%PREFIX%\etc
mkdir c:\msys\%PREFIX%\include
mkdir c:\msys\%PREFIX%\lib
mkdir c:\msys\%PREFIX%\lib\pkgconfig
mkdir c:\msys\%PREFIX%\share

echo export PREFIX="/%PREFIX%">> c:\msys\etc\profile
echo export PATH="$PATH:/%PREFIX%/bin">> c:\msys\etc\profile
echo export CFLAGS="-I/%PREFIX%/include">> c:\msys\etc\profile
echo export CPPFLAGS="-I/%PREFIX%/include">> c:\msys\etc\profile
echo export LDFLAGS="-L/%PREFIX%/lib">> c:\msys\etc\profile
echo export PKG_CONFIG_PATH="/%PREFIX%/lib/pkgconfig">> c:\msys\etc\profile
echo export XDG_DATA_DIRS="/%PREFIX%/share">> c:\msys\etc\profile

echo C:/MinGW                /mingw>> c:\msys\etc\fstab

@pause
