# Specs
MB: Asus Z97i Plus
CPU: Intel i5 4690k HD 4600
Wifi / BT: AW-CE123H Card (Broadcom BCM94352HMB) - BCM2070A0 Chip (BCM20702a1_001.002.014.1443.1469_v5565)
Audio: ALC892

# Bios
- `https://hackintosher.comhigh-sierra-install-full-guide/`
- `hackintosher.com - high-sierra-install-full-guide`
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

# Clover Base
- `https://www.insanelymac.com/forum/topic/323052-guide-sierra-high-sierra-mojave-on-intel-5-6-7-8-9-chipset-series-nehalem-sandybridge-ivybridge-haswell-broadwell/`
- `insanelymac.com - high-sierra-mojave-on-intel-5-6-7-8-9.pdf`
- `https://olarila.com/files/Utils/Folders.app.zip`

# Boot
- `https://hackintosher.comhigh-sierra-install-full-guide/`
- `hackintosher.com - high-sierra-install-full-guide.pdf`
- darkwake = darkwake -> darkwake=1
- dart = checked -> unchecked
- System Prefs > Energy Saver > Wake for Ethernet Network access = checked -> unchecked
- System Prefs > Energy Saver > Enable Power Nap = checked -> unchecked

# Smbios
- Add entire smbios dict - Generated `iMac14,2` via Clover Configurator
- Ensure serial number is invalid for iMessage

# Graphics
- `https://www.tonymacx86.com/threads/solved-issue-with-hd-4600-on-high-sierra-10-13-2.244130/`
- `tonymacx86.com - solved-issue-with-hd-4600.pdf`
- Add HD4600 platform ID

# Unused Kext
- Removed `VoodooPS2Controller.kext`
- Removed `AtherosE2200Ethernet.kext`
- Removed `RealtekRTL8111.kext`

# WIFI / BT
- `https://www.tonymacx86.com/threads/broadcom-wifi-bluetooth-guide.242423/`
- `tonymacx86.com - broadcom-wifi-bluetooth-guide.pdf`

## Method 1
- Install to `/S/L/E`
	- `FakePCIID_Broadcom_WiFi.kext` version `RehabMan-FakePCIID-2018-0421`
	- `FakePCIID.kext` version `RehabMan-FakePCIID-2018-0421`
	- `BrcmFirmwareRepo.kext` version `RehabMan-BrcmPatchRAM-2018-0505`
	- `BrcmPatchRAM2.kext` version `RehabMan-BrcmPatchRAM-2018-0505`

## Method 3
- Install to `/EFI/Clover/kexts/other/`
	- `AirportBrcmFixup.kext` version `1.1.5`
	- `BrcmFirmwareData.kext` version `RehabMan-BrcmPatchRAM-2018-0505`
	- `BrcmPatchRAM2.kext` version `RehabMan-BrcmPatchRAM-2018-0505`

# High Sierra Install Guide
- `https://hackintosher.commacos-high-sierra-hackintosh-install-clover-walkthrough/`
- `hackintosher.com - macos-high-sierra-hackintosh-install-clover-walkthrough.pdf`
- Boot from install usb, format drive HFS+Journalled + GUID, Install Mac OS, Reboot from install usb, perform edits to xml to skip APFS, reboot to install usb but choose mac partition, select same partition if installer reboots.
- Alternatively, clone the drive after an APFS install into HFS+ using CCC. Might encounter install bugs however.