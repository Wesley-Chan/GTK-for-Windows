# Instructions for setting up a building environment

This file shows you how to set up a building environment with MinGW-w64, MSYS and the other tools. Make sure you read `README.txt` before reading this.

1. Go to `/z_Install`.

2. Run `0_DOWNLOAD_ALL.bat` to download all the tools needed automatically. If you're sure that you got some of them exactly, you can put them into those folders correspondingly. The download script will have them skipped.

3. Make sure there's no directories named `MinGW` or `msys` in your `C:\`, because we're going to use them. If you formally installed them, please consider renaming them.

4. Run `INSTALL_ALL.bat` and follow the instructions (usually just pressing any key). It will setup everything for you. **Mind the messages show up!** If anything goes wrong, it might be an unfinished download package or permission denied.

5. When the prompt (finally) dismisses, you're ready to go.

Alternatively, you can run the batch files listed in `INSTALL_ALL.bat` one by one manually.
