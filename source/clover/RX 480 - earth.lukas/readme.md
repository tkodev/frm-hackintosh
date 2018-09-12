https://www.tonymacx86.com/threads/guide-success-msi-radeon-rx-480-gaming-x-full-acceleration-in-macos-sierra.206761/

MSI Radeon RX 480 Gaming X (not the reference) is now working on macOS Sierra with full acceleration!
To make it work you need to:
1. install the macOS Sierra 10.12.2 public beta
2. go to /System/Library/Extensions/AMDRadeonX4100.kext/Contents/, open info.plist and replace "0x67FF1002" to "0x67DF1002"
3. run Kext Utility (download Kext Utility.app.zip) and wait until the access rights restored
4. reboot, go to BIOS>Peripherals, and set the Initial Display Output in "IGFX", then go to the section Chipset and set the Internal Graphics in "Auto"
5. save, reboot, and wait a few minutes (you must set the partition "Macintosh HD" by default and turn on timer in Clover) and you will see a login screen!
And more: in "About This Mac" will be displayed "AMD R9 xxx". To fix this, do the following:
1. download app "iHex" from App Store
2. go to /System/Library/Extensions/AMD9500Controller.kext/Contents/MacOS/
3. open the file "AMD9500Controller" with iHex
4. find (Edit>Find) text "xxx" and replace text "R9 xxx" to "RX 480"
5. run Kext Utility and wait until the access rights restored
6. reboot!
That's all, good luck!)
[All that I have written refers to mobo Gigabyte Z170 D3H - on other motherboards names may differ]
UPD: It also works on 10.12.1
