CnCNet for Ares
================================================================================

Spawns Yuri's Revenge and connects players through cncnet5. This project should be used in conjunction with the [xna-cncnet-client](https://github.com/CnCNet/xna-cncnet-client) and [Ares](https://launchpad.net/ares/+download)

### Usage
    - Place cncnet5.dll in you mod folder with the xna-cncncet-client and the Ares files.
    - Optionally place rename.dll in the mod directory.
    - Syringe from Ares will automatically detect and include cncnet5.dll.
    - Configure xna-cncnet-client to execute Syringe.exe rather than game(md).exe

### Building
    - Download cncnet-for-ares
    - Edit src/rename.c, change the strings for the Gane name and file locations. Do not exceed the size of the existing strings in the game.
    - Download [win-builds](https://downloads.cncnet.org/win-builds-for-patching.zip) and install it by double clicking win-install.bat
    - In the cncnet5-for-ares run build.cmd by double clicking on it. Read the output window any errors you may introduced.
    - You should now have rename.dll. Now you can rename rename.dll to something appropriate for your mod (the name will not stop it from being loaded by Syringe).


### Caveats
    - Source code for cncnet5.dll is not public, only the cncnet5.dll file is provided here.
    - You do not need to use the command line -SPAWN argument.
    - You may need to edit build.cmd if win-builds did not get installed into C:\win-builds-patch-32\
