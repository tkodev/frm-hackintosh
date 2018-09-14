# Specs
MB: Asus Z97i Plus
CPU: Intel i5 4690k HD 4600
Wifi / BT: AW-CE123H Card (Broadcom BCM94352HMB) - BCM2070A0 Chip (BCM20702a1_001.002.014.1443.1469_v5565)

# Bios
- `https://hackintosher.com/guides/high-sierra-install-full-guide/`
- `/guides/hackintosher.com - high-sierra-install-full-guide`
- Intel Virtualization Technology = Disabled -> Enabled
- Primary Display = Auto -> CPU Graphics
- Legacy USB = Enabled -> Auto
- Fast Boot = Enabled -> Disabled
  - USB Support = Partial Init -> Full Init
  - PS/2 Keyboard and Mouse = Auto -> Disabled
- Other OS = Windows -> Other OS
- AI Overclock Tuner = Auto -> XMP
- VT-d = Disabled
- Intel xHCI Mode = Smart Auto
- EHCI Hand Off = Disabled
- Network Stack = Disabled
- Power ON by PCIE = Disabled
- XHCI Hand Off = Not found
- IO SerialPort = Not found

# Boot
- `https://hackintosher.com/guides/high-sierra-install-full-guide/`
- `/guides/hackintosher.com - high-sierra-install-full-guide`
darkwake = darkwake -> darkwake=1
dart = unchecked

# WIFI 
- `https://www.tonymacx86.com/threads/broadcom-wifi-bluetooth-guide.242423/`
- `/guides/tonymacx86.com - broadcom-wifi-bluetooth-guide.pdf`

# Smbios
Add entire smbios dict

# Graphics
- `https://www.tonymacx86.com/threads/solved-issue-with-hd-4600-on-high-sierra-10-13-2.244130/`
- `/guides/tonymacx86.com - solved-issue-with-hd-4600.pdf`
- Add HD4600 platform ID

# Unused Kext
- Removed `VoodooPS2Controller.kext`
- Removed `AtherosE2200Ethernet.kext`
- Removed `RealtekRTL8111.kext`

# High Sierra Install Guide
- `https://hackintosher.com/guides/macos-high-sierra-hackintosh-install-clover-walkthrough/`
- `/guides/hackintosher.com - macos-high-sierra-hackintosh-install-clover-walkthrough.pdf`
- Boot from install usb, format drive HFS+Journalled + GUID, Install Mac OS, Reboot from install usb, perform edits to xml to skip APFS, reboot to install usb but choose mac partition, select same partition if installer reboots.
- Alternatively, clone the drive after an APFS install into HFS+ using CCC. Might encounter install bugs however.