# Instructions for building the libraries

This file shows you how to build GTK+ and its dependencies. Make sure you read `README.txt` and setup a building environment before doing this.

1. Copy `/libs` the whole folder to your HDD (SSD or RAM disk is recommended). Let's assume you put `/libs` in `D:\`. `D:\libs\` in other words.

2. Append a line to `C:\msys\etc\fstab` to tell MSYS where your `/libs` is. If you put `/libs` to `D:\`, just like step 1, then, execute the line below in Windows command line:

        echo D:/libs                /libs>> c:\msys\etc\fstab

3. Open a MSYS shell. Change the current directory to `/libs` and run `DOWNLOAD_ALL.sh` to download all the source code tarballs. 

        cd /libs

        ./DOWNLOAD_ALL.sh

A complete set of tarballs should look like this:

/libs

|

|---/atk

|   |---atk-2.11.90.tar.xz

|

|---/cairo

|   |---cairo-1.12.16.tar.xz

...

|---/zlib

|   |---zlib-1.2.8.tar.xz

|   |---zlib.pc

|

|---atk.sh

|---BUILD\_ALL.sh

...

4. Run `BUILD\_ALL.sh`. Usually, this might take one to two hours depending on your computer.

        cd /libs

        ./BUILD_ALL.sh

Alternatively, run the scripts one by one following the sequence in `BUILD\_ALL.sh`.

5. When the script stops, check the result. The building logs can also be found at `/libs/logs`.
