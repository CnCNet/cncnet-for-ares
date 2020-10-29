CnCNet for Ares
================================================================================

Provides an ability for Yuri's Revenge with Ares to use CnCNet5 to play online. This project should be used in conjunction with the [XNA CnCNet Client](https://github.com/CnCNet/xna-cncnet-client) and [Ares](https://launchpad.net/ares/+download).

## Usage
 - Place `cncnet5.dll `in you mod folder with the XNA CnCNet Client and Ares files.
 - Optionally place `rename.dll` in the mod directory.
 - Syringe (included with Ares) will automatically detect and include `cncnet5.dll`.
 - Configure xna-cncnet-client to execute `Syringe.exe` rather than `gamemd.exe`.

## Building
 - Download or clone `cncnet-for-ares` repository.
 - Edit `src/rename.c`, change the strings for the Gane name and file locations. Do not exceed the size of the existing strings in the game.
 - Download [win-builds](https://downloads.cncnet.org/win-builds-for-patching.zip) and install it by double clicking `win-install.bat`.
 - In the `cncnet-for-ares` run `build.cmd` by double clicking on it. Read the output window any errors you may have introduced.
 - You should now have `rename.dll`. Now you can rename it to something appropriate for your mod (the name will not stop it from being loaded by Syringe).

## Caveats
 - Source code for `cncnet5.dll` is not public, only the `cncnet5.dll` file is provided here.
 - You do not need to use the command line `-SPAWN` argument.
 - You may need to edit `build.cmd` if win-builds did not get installed into `C:\win-builds-patch-32\`.
