# Preface
Based on guides and downloads accessed on Aug 06 2018 from https://hackintosher.com/guides/high-sierra-install-full-guide/

# Kext Modifications
- Removed all ethernet kext except `intelmausiethernet.kext`
- Removed all XHCI kext
- Replaced graphics kext with `WhateverGreen.kext`
- Updated all kext versions to latest source repos

# Config Modifications
- Updated platform to `iMac 14,2`.
- Added `darkwake=1` ASUS MB flag.
- Added `FixShutdown` fix.
- Generated new Serial, SmUUID and MLB.