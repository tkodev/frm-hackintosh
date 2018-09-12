/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160422-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-1.aml, Mon Nov 28 02:06:32 2016
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000047E (1150)
 *     Revision         0x01
 *     Checksum         0x91
 *     OEM ID           "OEMC"
 *     OEM Table ID     "Ult0Rtd3"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20120913 (538052883)
 */
DefinitionBlock ("", "SSDT", 1, "OEMC", "Ult0Rtd3", 0x00001000)
{
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.HDEF, DeviceObj)
    External (_SB_.PCI0.RP01.WIFI, DeviceObj)
    External (_SB_.PCI0.SAT0, DeviceObj)
    External (_SB_.PCI0.XHC_, DeviceObj)
    External (_SB_.PCI0.XHC_.MEMB, FieldUnitObj)
    External (_SB_.PCI0.XHC_.RHUB, DeviceObj)
    External (_SB_.PEPD, UnknownObj)
    External (_SB_.RDGP, MethodObj)    // 1 Arguments
    External (_SB_.WTGP, MethodObj)    // 2 Arguments
    External (ADBG, MethodObj)    // 1 Arguments
    External (BID_, FieldUnitObj)
    External (BSPC, IntObj)
    External (BWT1, IntObj)
    External (GO27, FieldUnitObj)
    External (GS27, FieldUnitObj)
    External (HDAD, FieldUnitObj)
    External (RTD3, FieldUnitObj)
    External (S0ID, FieldUnitObj)
    External (VRSD, FieldUnitObj)

    Name (LONT, Zero)
    Method (SGON, 2, Serialized)
    {
        If (LNotEqual (\_SB.RDGP (Arg0), Arg1))
        {
            Divide (Subtract (Timer, \LONT), 0x2710, , Local0)
            If (LLess (Local0, \VRSD))
            {
                Sleep (Subtract (\VRSD, Local0))
            }

            \_SB.WTGP (Arg0, Arg1)
            Store (Timer, \LONT)
            Return (One)
        }
        Else
        {
            Return (Zero)
        }
    }

    If (LAnd (LOr (LEqual (BID, BWT1), LEqual (BID, BSPC)), LEqual (RTD3, One)))
    {
        Scope (\_SB)
        {
            PowerResource (PRWF, 0x05, 0x0000)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }

                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                    If (\_OSI ("Windows 2013"))
                    {
                        Notify (\_SB.PCI0.RP01.WIFI, One)
                    }
                    Else
                    {
                        \_SB.WTGP (0x08, One)
                        Sleep (0xFA)
                    }
                }

                Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                {
                    If (\_OSI ("Windows 2013"))
                    {
                        Notify (\_SB.PCI0.RP01.WIFI, One)
                    }
                    Else
                    {
                        \_SB.WTGP (0x08, Zero)
                        Sleep (0xFA)
                    }
                }

                Method (_RST, 0, NotSerialized)  // _RST: Device Reset
                {
                    \_SB.PRWF._OFF ()
                    \_SB.PRWF._ON ()
                }
            }
        }

        Scope (\_SB.PCI0.RP01.WIFI)
        {
            Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
            {
                0x1B, 
                0x04
            })
            Name (WKEN, Zero)
            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
                If (Arg1)
                {
                    Store (Zero, WKEN)
                }
                ElseIf (LAnd (Arg0, Arg2))
                {
                    Store (One, WKEN)
                }
                Else
                {
                    Store (Zero, WKEN)
                }
            }

            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                \_SB.PRWF
            })
            Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
            {
                \_SB.PRWF
            })
            Name (_PRR, Package (0x01)  // _PRR: Power Resource for Reset
            {
                \_SB.PRWF
            })
            Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
            {
                Return (0x03)
            }

            Method (_PS0, 0, Serialized)  // _PS0: Power State 0
            {
                Store (One, \GO27)
            }

            Method (_PS3, 0, Serialized)  // _PS3: Power State 3
            {
                Store (One, \GS27)
                Store (Zero, \GO27)
            }
        }

        Scope (\_GPE)
        {
            Method (_L1B, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
            {
                If (\_SB.PCI0.RP01.WIFI.WKEN)
                {
                    Store (One, \GO27)
                }

                Notify (\_SB.PCI0.RP01.WIFI, 0x02)
            }
        }

        Scope (\_SB.PCI0.SAT0)
        {
            Name (_S0W, 0x03)  // _S0W: S0 Device Wake State
        }

        Scope (\_SB.PCI0.XHC)
        {
            Name (UPWR, Zero)
            Name (USPP, Zero)
            Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
            {
                Return (0x03)
            }

            Method (_S4W, 0, NotSerialized)  // _S4W: S4 Device Wake State
            {
                Return (0x03)
            }
        }

        Scope (\_SB.PCI0.XHC.RHUB)
        {
            Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
            {
                Return (0x03)
            }

            Method (_PS0, 0, Serialized)  // _PS0: Power State 0
            {
                Store (Zero, USPP)
            }

            Method (_PS2, 0, Serialized)  // _PS2: Power State 2
            {
                OperationRegion (XHCM, SystemMemory, And (MEMB, 0xFFFF0000), 0x0600)
                Field (XHCM, DWordAcc, NoLock, Preserve)
                {
                    Offset (0x02), 
                    XHCV,   16, 
                    Offset (0x480), 
                    HP01,   1, 
                    Offset (0x490), 
                    HP02,   1, 
                    Offset (0x4A0), 
                    HP03,   1, 
                    Offset (0x4B0), 
                    HP04,   1, 
                    Offset (0x4C0), 
                    HP05,   1, 
                    Offset (0x4D0), 
                    HP06,   1, 
                    Offset (0x4E0), 
                    HP07,   1, 
                    Offset (0x4F0), 
                    HP08,   1, 
                    Offset (0x510), 
                    SP00,   1, 
                    Offset (0x520), 
                    SP01,   1, 
                    Offset (0x530), 
                    SP02,   1, 
                    Offset (0x540), 
                    SP03,   1
                }

                If (LEqual (XHCV, 0xFFFF))
                {
                    Return (Zero)
                }

                If (LAnd (LEqual (HP01, Zero), LEqual (SP00, Zero)))
                {
                    Or (USPP, 0x02, USPP)
                }

                If (LAnd (LEqual (HP02, Zero), LEqual (SP01, Zero)))
                {
                    Or (USPP, 0x04, USPP)
                }
            }

            Method (_PS3, 0, Serialized)  // _PS3: Power State 3
            {
            }
        }

        Scope (\_SB.PCI0)
        {
            PowerResource (PAUD, 0x00, 0x0000)
            {
                Name (_STA, One)  // _STA: Status
                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                    Store (One, _STA)
                }

                Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                {
                    Store (Zero, _STA)
                }
            }
        }

        If (LNot (HDAD))
        {
            Scope (\_SB.PCI0.HDEF)
            {
                Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
                {
                    ADBG ("HDEF DEP Call")
                    If (LEqual (S0ID, One))
                    {
                        ADBG ("HDEF DEP")
                        Return (Package (0x01)
                        {
                            \_SB.PEPD
                        })
                    }
                    Else
                    {
                        ADBG ("HDEF DEP NULL")
                        Return (Package (0x00) {})
                    }
                }

                Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                {
                    \_SB.PCI0.PAUD
                })
                Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
                {
                    \_SB.PCI0.PAUD
                })
            }
        }
    }
}

