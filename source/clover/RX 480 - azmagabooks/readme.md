https://www.tonymacx86.com/threads/enabling-amd-rx-4xx-cards-in-sierra.201364/page-17#post-1371577

I have attached my config.plist and AMDRadeonX4100.kext.

"Make sure to set your mobo bios settings to primary display IGFX (internal graphics, the intel CPU graphics) and set to Auto if possible. My Gigabyte board has the IGFX selection in peripherals menu, and the Auto setting in Chipset menu. you are setting it up to run in integrated graphics mode similar to using a windows format."

Before you boot make sure you have your monitor connected to the integrated graphics first. When Clover loads use your arrow keys to select the appropriate option to boot MacOS. Then switch the cable to your Radeon card and hit return (enter). If you have an extra monitor you may leave a monitor plugged into your integrated card. Enjoy. I hope you get it to work.
