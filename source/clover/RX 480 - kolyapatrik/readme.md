https://www.tonymacx86.com/threads/amd-radeon-rx-480.194775/page-24#post-1384066

Hi guys!
I have successfully installed Gigabyte 4GB Radeon RX480 on Sierra 10.12.2 Beta 4

This is the recipe. It's WORK Finally, but I hope Apple will release Polaris 10 driver out of the box in 10.12.2 (Release version)
Backup Clover manually!!
Clover: In Graphics / Clean all preferences
Install radeon kexts (4000 and 4100) with Kext Utility or Easy Kext
Reboot
BIOS: Integrated Graphics = Enabled
BIOS: Primary Graphics = IGPU
Boot / OS booted on RX480 port
