# Specs
MB: Asus Z97i Plus
CPU: Intel i5 4690k HD 4600
Wifi: AW-CE123H Card (Broadcom BCM94352HMB) - BCM2070A0 Chip (BCM20702a1_001.002.014.1443.1469_v5565)

# Bios
- `https://hackintosher.com/guides/high-sierra-install-full-guide/`
- `/guides/hackintosher.com - high-sierra-install-full-guide`

## Changed
- Intel Virtualization Technology = Disabled -> Enabled
- Primary Display = Auto -> CPU Graphics
- Legacy USB = Enabled -> Auto
- Fast Boot = Enabled -> Disabled
  - USB Support = Partial Init -> Full Init
  - PS/2 Keyboard and Mouse = Auto -> Disabled
- Other OS = Windows -> Other OS
- AI Overclock Tuner = Auto -> XMP

## Unchanged
- VT-d = Disabled
- Intel xHCI Mode = Smart Auto
- EHCI Hand Off = Disabled
- Network Stack = Disabled
- Power ON by PCIE = Disabled

## Not found
XHCI Hand Off = Not found
IO SerialPort = Not found

# WIFI 
- `https://www.tonymacx86.com/threads/broadcom-wifi-bluetooth-guide.242423/`
- `/guides/tonymacx86.com - broadcom-wifi-bluetooth-guide.pdf`

# Smbios
Add entire smbios dict

# Graphics
Add HD4600 platform ID

# High Sierra Install Guide
- `https://hackintosher.com/guides/macos-high-sierra-hackintosh-install-clover-walkthrough/`
- `hackintosher.com - macos-high-sierra-hackintosh-install-clover-walkthrough.pdf`
- Boot from install USB, use boot entry of the USB install drive
- Install Mac OS
- Boot from install USB, use boot entry of the USB install drive
- Open terminal and enter 
```bash
ls -1 /Volumes #will list the available volumes.
cd '/Volumes/Mac OS' #use the drive you're installing mac OS into.
cd "macOS Install Data"
vi minstallconfig.xml
```
- `x` to delete, `i` to go into insert mode, `:e!` to reload file, `:wq` to save and quit
- Boot from install USB, use the boot entry of drive you're installing mac OS into.
- If restart, boot back into the same drive.