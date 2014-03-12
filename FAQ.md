# FAQ

Q: How to open a Windows command line console?

A: There're several ways to do that.

* Press `WinKey+R`, and type "cmd", and then press Enter.
* Click the `Start` at the bottom left corner of the desktop and find `Run`. type "cmd" and press Enter.
* Go to `C:\WINDOWS\system32\` and double click `cmd.exe`.

Q: How to open a MSYS shell (bash)?

A: Go to `C:\msys\` and double click `msys.bat`.

Q: How do I know whether the building is successful?

A: You can check the log files in `/lib/logs` any time you want.

Q: Where's the building result?

A: The binaries you built lies in `/opt`, i.e. `C:\msys\opt`.

Q: I stopped the building halfway. What should I do?

A: You can continue the building from where it stopped. Find out the last library it was building by checking the log files. Then delete the folder extracted from the tarball by its building script (e.g. `/libs/atk/atk-2.11.90/`) and run `BUILD_ALL.sh` again after remarking the ones which are already built by adding a "#" to the start of the line.
