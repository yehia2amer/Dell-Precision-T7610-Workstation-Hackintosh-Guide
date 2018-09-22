/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160422-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of /var/folders/2s/prhmy3g969ncjp3wd624pr0m0000gn/T/017F62D7-4CF0-4364-AECB-C99702A06B77-1527-000003C9AA5C5EFB/DSDT.aml, Sat Sep 22 21:18:23 2018
 *
 * Original Table Header:
 *     Signature        "DSDT"
 *     Length           0x00009C4E (40014)
 *     Revision         0x02
 *     Checksum         0x68
 *     OEM ID           "DELL  "
 *     OEM Table ID     "CBX3   "
 *     OEM Revision     0x00000023 (35)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20161210 (538317328)
 */
DefinitionBlock ("", "DSDT", 2, "DELL  ", "CBX3   ", 0x00000023)
{
    Name (IO1B, Zero)
    Name (IO1L, Zero)
    Name (IO2B, 0x0A10)
    Name (IO2L, 0x10)
    Name (IO3B, Zero)
    Name (IO3L, Zero)
    Name (IOES, Zero)
    Name (TCBR, 0xFED08000)
    Name (TCLT, 0x1000)
    Name (SRCB, 0xFED1C000)
    Name (SRCL, 0x4000)
    Name (SUSW, 0xFF)
    Name (PMLN, 0x80)
    Name (SMIP, 0xB2)
    Name (APCB, 0xFEC00000)
    Name (APCL, 0x00100000)
    Name (PM30, 0x0430)
    Name (SMBS, 0x1180)
    Name (SMBL, 0x20)
    Name (HPTB, 0xFED00000)
    Name (HPTC, 0xFED1F404)
    Name (GPBS, 0x0500)
    Name (GPLN, 0x80)
    Name (PEBS, 0x90000000)
    Name (LAPB, 0xFEE00000)
    Name (VTD0, 0xE7FFC000)
    Name (VTD1, 0xFBFFE000)
    Name (SRSI, 0xB2)
    Name (CSMI, 0x61)
    Name (ACPH, 0xDE)
    Name (ASSB, Zero)
    Name (AOTB, Zero)
    Name (AAXB, Zero)
    Name (HIDK, 0x0303D041)
    Name (HIDM, 0x030FD041)
    Name (CIDK, 0x0B03D041)
    Name (CIDM, 0x130FD041)
    Name (PEHP, One)
    Name (SHPC, Zero)
    Name (PEPM, One)
    Name (PECS, One)
    Name (ITKE, Zero)
    Name (MBEC, 0xFFFF)
    Name (PMBS, 0x0400)
    Name (SMIT, 0xB2)
    Name (OFST, 0xBC)
    Name (TRST, 0x02)
    Name (TPMF, Zero)
    Name (TCMF, Zero)
    Name (TMF1, Zero)
    Name (TMF2, Zero)
    Name (TMF3, Zero)
    Name (WHEA, One)
    Name (PEER, One)
    Name (SP1O, 0x2E)
    Name (DSSP, Zero)
    Name (FHPP, Zero)
    Name (PICM, Zero)
    Method (_PIC, 1, NotSerialized)  // _PIC: Interrupt Model
    {
        If (Arg0)
        {
            DBG8 = 0xAA
        }
        Else
        {
            DBG8 = 0xAC
        }

        PICM = Arg0
    }

    Name (OSVR, Ones)
    Method (OSFL, 0, NotSerialized)
    {
        If (OSVR != Ones)
        {
            Return (OSVR)
        }

        If (PICM == Zero)
        {
            DBG8 = 0xAC
        }

        OSVR = One
        If (CondRefOf (\_OSI, Local0))
        {
            If (_OSI ("Linux"))
            {
                OSVR = 0x03
            }

            If (_OSI ("Windows 2001"))
            {
                OSVR = 0x04
            }

            If (_OSI ("Windows 2001.1"))
            {
                OSVR = 0x05
            }

            If (_OSI ("FreeBSD"))
            {
                OSVR = 0x06
            }

            If (_OSI ("HP-UX"))
            {
                OSVR = 0x07
            }

            If (_OSI ("OpenVMS"))
            {
                OSVR = 0x08
            }

            If (_OSI ("Windows 2001 SP1"))
            {
                OSVR = 0x09
            }

            If (_OSI ("Windows 2001 SP2"))
            {
                OSVR = 0x0A
            }

            If (_OSI ("Windows 2001 SP3"))
            {
                OSVR = 0x0B
            }

            If (_OSI ("Windows 2006"))
            {
                OSVR = 0x0C
            }

            If (_OSI ("Windows 2006 SP1"))
            {
                OSVR = 0x0D
            }

            If (_OSI ("Darwin") || _OSI ("Windows 2009"))
            {
                OSVR = 0x0E
            }

            If (_OSI ("Windows 2012"))
            {
                OSVR = 0x0F
            }
        }
        Else
        {
            If (MCTH (_OS, "Microsoft Windows NT"))
            {
                OSVR = Zero
            }

            If (MCTH (_OS, "Microsoft Windows"))
            {
                OSVR = One
            }

            If (MCTH (_OS, "Microsoft WindowsME: Millennium Edition"))
            {
                OSVR = 0x02
            }

            If (MCTH (_OS, "Linux"))
            {
                OSVR = 0x03
            }

            If (MCTH (_OS, "FreeBSD"))
            {
                OSVR = 0x06
            }

            If (MCTH (_OS, "HP-UX"))
            {
                OSVR = 0x07
            }

            If (MCTH (_OS, "OpenVMS"))
            {
                OSVR = 0x08
            }
        }

        Return (OSVR)
    }

    Method (MCTH, 2, Serialized)
    {
        If (SizeOf (Arg0) < SizeOf (Arg1))
        {
            Return (Zero)
        }

        Local0 = (SizeOf (Arg0) + One)
        Name (BUF0, Buffer (Local0) {})
        Name (BUF1, Buffer (Local0) {})
        BUF0 = Arg0
        BUF1 = Arg1
        While (Local0)
        {
            Local0--
            If (DerefOf (BUF0 [Local0]) != DerefOf (BUF1 [Local0]))
            {
                Return (Zero)
            }
        }

        Return (One)
    }

    Name (PRWP, Package (0x02)
    {
        Zero, 
        Zero
    })
    Method (GPRW, 2, NotSerialized)
    {
        PRWP [Zero] = Arg0
        Local0 = (SS1 << One)
        Local0 |= (SS2 << 0x02)
        Local0 |= (SS3 << 0x03)
        Local0 |= (SS4 << 0x04)
        If ((One << Arg1) & Local0)
        {
            PRWP [One] = Arg1
        }
        Else
        {
            Local0 >>= One
            If ((OSFL () == One) || (OSFL () == 0x02))
            {
                FindSetLeftBit (Local0, PRWP [One])
            }
            Else
            {
                FindSetRightBit (Local0, PRWP [One])
            }
        }

        Return (PRWP)
    }

    Name (WAKP, Package (0x02)
    {
        Zero, 
        Zero
    })
    OperationRegion (DEB0, SystemIO, 0x80, One)
    Field (DEB0, ByteAcc, NoLock, Preserve)
    {
        DBG8,   8
    }

    OperationRegion (DEB1, SystemIO, 0x90, 0x02)
    Field (DEB1, WordAcc, NoLock, Preserve)
    {
        DBG9,   16
    }

    Name (SS1, Zero)
    Name (SS2, Zero)
    Name (SS3, One)
    Name (SS4, One)
    Name (IOST, One)
    Name (TOPM, Zero)
    Name (ROMS, 0xFFE00000)
    Name (VGAF, One)
    OperationRegion (EXBU, SystemMemory, 0x8A7FFF18, 0x0D)
    Field (EXBU, AnyAcc, Lock, Preserve)
    {
        DAT0,   8, 
        DTPM,   8, 
        DTCM,   8, 
        IDMN,   16, 
        IDPC,   16, 
        DLPN,   40, 
        PMFG,   8
    }

    Scope (_SB)
    {
        Name (PR00, Package (0x26)
        {
            Package (0x04)
            {
                0x001FFFFF, 
                Zero, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x001BFFFF, 
                Zero, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                Zero, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                One, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0011FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0011FFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0011FFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0011FFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0019FFFF, 
                Zero, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                Zero, 
                LNKH, 
                Zero
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                Zero, 
                LNKA, 
                Zero
            }
        })
        Name (AR00, Package (0x26)
        {
            Package (0x04)
            {
                0x001FFFFF, 
                Zero, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                One, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x001BFFFF, 
                Zero, 
                Zero, 
                0x16
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                Zero, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                One, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                0x03, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0011FFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0011FFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x0011FFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0011FFFF, 
                0x03, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x18
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x19
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x19
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x19
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                Zero, 
                Zero, 
                0x1A
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                One, 
                Zero, 
                0x1C
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x02, 
                Zero, 
                0x1D
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x03, 
                Zero, 
                0x1E
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                Zero, 
                Zero, 
                0x21
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                One, 
                Zero, 
                0x25
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                0x02, 
                Zero, 
                0x26
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                0x03, 
                Zero, 
                0x24
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                Zero, 
                Zero, 
                0x29
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                One, 
                Zero, 
                0x2D
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                0x02, 
                Zero, 
                0x2E
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                0x03, 
                Zero, 
                0x2C
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                Zero, 
                Zero, 
                0x1F
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                One, 
                Zero, 
                0x27
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                0x02, 
                Zero, 
                0x1F
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                0x03, 
                Zero, 
                0x27
            }, 

            Package (0x04)
            {
                0x0019FFFF, 
                Zero, 
                Zero, 
                0x14
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                Zero, 
                Zero, 
                0x17
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                Zero, 
                Zero, 
                0x10
            }
        })
        Name (PR09, Package (0x04)
        {
            Package (0x04)
            {
                0x0004FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR09, Package (0x04)
        {
            Package (0x04)
            {
                0x0004FFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                0x03, 
                Zero, 
                0x13
            }
        })
        Name (PR01, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR01, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x13
            }
        })
        Name (PR02, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKA, 
                Zero
            }
        })
        Name (AR02, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x10
            }
        })
        Name (PR03, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKB, 
                Zero
            }
        })
        Name (AR03, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x11
            }
        })
        Name (PR04, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKA, 
                Zero
            }
        })
        Name (AR04, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x12
            }
        })
        Name (PR05, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR05, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x13
            }
        })
        Name (PR06, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKA, 
                Zero
            }
        })
        Name (AR06, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x10
            }
        })
        Name (PR07, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKB, 
                Zero
            }
        })
        Name (AR07, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x11
            }
        })
        Name (PR08, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKC, 
                Zero
            }
        })
        Name (AR08, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x12
            }
        })
        Name (PR80, Package (0x14)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR80, Package (0x14)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x30
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x31
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x31
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x31
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                Zero, 
                Zero, 
                0x32
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                One, 
                Zero, 
                0x34
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x02, 
                Zero, 
                0x35
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x03, 
                Zero, 
                0x36
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                Zero, 
                Zero, 
                0x39
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                One, 
                Zero, 
                0x3D
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                0x02, 
                Zero, 
                0x3E
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                0x03, 
                Zero, 
                0x3C
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                Zero, 
                Zero, 
                0x41
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                One, 
                Zero, 
                0x45
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                0x02, 
                Zero, 
                0x46
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                0x03, 
                Zero, 
                0x44
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                Zero, 
                Zero, 
                0x37
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                One, 
                Zero, 
                0x3F
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                0x02, 
                Zero, 
                0x37
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                0x03, 
                Zero, 
                0x3F
            }
        })
        Name (PR17, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR17, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x28
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x2C
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x2D
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x2E
            }
        })
        Name (PR13, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR13, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x20
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x24
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x25
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x26
            }
        })
        Name (PR12, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR12, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x1B
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x1E
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x1C
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x1D
            }
        })
        Name (PR97, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR97, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x40
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x44
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x45
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x46
            }
        })
        Name (PR93, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR93, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x38
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x3C
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x3D
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x3E
            }
        })
        Name (PRSA, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {3,4,5,6,7,10,11,12,14,15}
        })
        Alias (PRSA, PRSB)
        Name (PRSC, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {3,4,5,6,10,11,12,14,15}
        })
        Alias (PRSC, PRSD)
        Alias (PRSA, PRSE)
        Alias (PRSA, PRSF)
        Alias (PRSA, PRSG)
        Alias (PRSA, PRSH)
        Device (PCI0)
        {
            Name (_HID, EisaId ("PNP0A08"))  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0A03"))  // _CID: Compatible ID
            Name (_ADR, Zero)  // _ADR: Address
            Method (^BN00, 0, NotSerialized)
            {
                Return (Zero)
            }

            Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
            {
                Return (BN00 ())
            }

            Name (_UID, Zero)  // _UID: Unique ID
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR00)
                }

                Return (PR00)
            }

            Name (CPRB, One)
            Name (LVGA, One)
            Name (STAV, 0x0F)
            Name (BRB, Zero)
            Name (BRL, 0x7F)
            Name (IOB, 0x1000)
            Name (IOL, 0x9000)
            Name (MBB, 0x90000000)
            Name (MBL, 0x58000000)
            Name (MABL, Zero)
            Name (MABH, Zero)
            Name (MALL, Zero)
            Name (MALH, Zero)
            Name (MAML, Zero)
            Name (MAMH, Zero)
            Name (CRS1, ResourceTemplate ()
            {
                WordBusNumber (ResourceProducer, MinFixed, MaxFixed, PosDecode,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x007F,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0080,             // Length
                    ,, _Y00)
                IO (Decode16,
                    0x0CF8,             // Range Minimum
                    0x0CF8,             // Range Maximum
                    0x01,               // Alignment
                    0x08,               // Length
                    )
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x03AF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x03B0,             // Length
                    ,, , TypeStatic)
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x03E0,             // Range Minimum
                    0x0CF7,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0918,             // Length
                    ,, , TypeStatic)
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x0000,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0000,             // Length
                    ,, _Y02, TypeStatic)
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0D00,             // Range Minimum
                    0x0FFF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0300,             // Length
                    ,, _Y01, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x00000000,         // Range Minimum
                    0x00000000,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00000000,         // Length
                    ,, _Y03, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C0000,         // Range Minimum
                    0x000DFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00020000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x02000000,         // Range Minimum
                    0xFFDFFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0xFDE00000,         // Length
                    ,, _Y04, AddressRangeMemory, TypeStatic)
                QWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x0000000000000000, // Granularity
                    0x0000000000000000, // Range Minimum
                    0x0000000000000000, // Range Maximum
                    0x0000000000000000, // Translation Offset
                    0x0000000000000000, // Length
                    ,, _Y05, AddressRangeMemory, TypeStatic)
            })
            Name (CRS2, ResourceTemplate ()
            {
                WordBusNumber (ResourceProducer, MinFixed, MaxFixed, PosDecode,
                    0x0000,             // Granularity
                    0x0080,             // Range Minimum
                    0x00FF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0080,             // Length
                    ,, _Y06)
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x0000,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0000,             // Length
                    ,, _Y08, TypeStatic)
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x0000,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0000,             // Length
                    ,, _Y07, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x00000000,         // Range Minimum
                    0x00000000,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00000000,         // Length
                    ,, _Y09, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x80000000,         // Range Minimum
                    0xFFFFFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x80000000,         // Length
                    ,, _Y0A, AddressRangeMemory, TypeStatic)
                QWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x0000000000000000, // Granularity
                    0x0000000000000000, // Range Minimum
                    0x0000000000000000, // Range Maximum
                    0x0000000000000000, // Translation Offset
                    0x0000000000000000, // Length
                    ,, _Y0B, AddressRangeMemory, TypeStatic)
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (STAV)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                If (CPRB)
                {
                    CreateWordField (CRS1, \_SB.PCI0._Y00._MIN, MIN0)  // _MIN: Minimum Base Address
                    CreateWordField (CRS1, \_SB.PCI0._Y00._MAX, MAX0)  // _MAX: Maximum Base Address
                    CreateWordField (CRS1, \_SB.PCI0._Y00._LEN, LEN0)  // _LEN: Length
                    MIN0 = BRB
                    LEN0 = BRL
                    Local0 = LEN0
                    MAX0 = (MIN0 + Local0--)
                    CreateWordField (CRS1, \_SB.PCI0._Y01._MIN, MIN1)  // _MIN: Minimum Base Address
                    CreateWordField (CRS1, \_SB.PCI0._Y01._MAX, MAX1)  // _MAX: Maximum Base Address
                    CreateWordField (CRS1, \_SB.PCI0._Y01._LEN, LEN1)  // _LEN: Length
                    If (IOB == 0x1000)
                    {
                        Local0 = IOL
                        MAX1 = (IOB + Local0--)
                        Local0 = (MAX1 - MIN1)
                        LEN1 = (Local0 + One)
                    }
                    Else
                    {
                        MIN1 = IOB
                        LEN1 = IOL
                        Local0 = LEN1
                        MAX1 = (MIN1 + Local0--)
                    }

                    If ((LVGA == One) || (LVGA == 0x55))
                    {
                        If (VGAF)
                        {
                            CreateWordField (CRS1, \_SB.PCI0._Y02._MIN, IMN1)  // _MIN: Minimum Base Address
                            CreateWordField (CRS1, \_SB.PCI0._Y02._MAX, IMX1)  // _MAX: Maximum Base Address
                            CreateWordField (CRS1, \_SB.PCI0._Y02._LEN, ILN1)  // _LEN: Length
                            IMN1 = 0x03B0
                            IMX1 = 0x03DF
                            ILN1 = 0x30
                            CreateDWordField (CRS1, \_SB.PCI0._Y03._MIN, VMN1)  // _MIN: Minimum Base Address
                            CreateDWordField (CRS1, \_SB.PCI0._Y03._MAX, VMX1)  // _MAX: Maximum Base Address
                            CreateDWordField (CRS1, \_SB.PCI0._Y03._LEN, VLN1)  // _LEN: Length
                            VMN1 = 0x000A0000
                            VMX1 = 0x000BFFFF
                            VLN1 = 0x00020000
                            VGAF = Zero
                        }
                    }

                    CreateDWordField (CRS1, \_SB.PCI0._Y04._MIN, MIN3)  // _MIN: Minimum Base Address
                    CreateDWordField (CRS1, \_SB.PCI0._Y04._MAX, MAX3)  // _MAX: Maximum Base Address
                    CreateDWordField (CRS1, \_SB.PCI0._Y04._LEN, LEN3)  // _LEN: Length
                    MIN3 = MBB
                    LEN3 = MBL
                    Local0 = LEN3
                    MAX3 = (MIN3 + Local0--)
                    If (MALH || MALL)
                    {
                        CreateQWordField (CRS1, \_SB.PCI0._Y05._MIN, MN8L)  // _MIN: Minimum Base Address
                        Local0 = 0xB8
                        CreateDWordField (CRS1, Local0, MN8H)
                        MN8L = MABL
                        MN8H = MABH
                        CreateQWordField (CRS1, \_SB.PCI0._Y05._MAX, MX8L)  // _MAX: Maximum Base Address
                        Local1 = 0xC0
                        CreateDWordField (CRS1, Local1, MX8H)
                        CreateQWordField (CRS1, \_SB.PCI0._Y05._LEN, LN8L)  // _LEN: Length
                        Local2 = 0xD0
                        CreateDWordField (CRS1, Local2, LN8H)
                        MN8L = MABL
                        MN8H = MABH
                        LN8L = MALL
                        LN8H = MALH
                        MX8L = MAML
                        MX8H = MAMH
                    }

                    Return (CRS1)
                }
                Else
                {
                    CreateWordField (CRS2, \_SB.PCI0._Y06._MIN, MIN2)  // _MIN: Minimum Base Address
                    CreateWordField (CRS2, \_SB.PCI0._Y06._MAX, MAX2)  // _MAX: Maximum Base Address
                    CreateWordField (CRS2, \_SB.PCI0._Y06._LEN, LEN2)  // _LEN: Length
                    MIN2 = BRB
                    LEN2 = BRL
                    Local1 = LEN2
                    MAX2 = (MIN2 + Local1--)
                    CreateWordField (CRS2, \_SB.PCI0._Y07._MIN, MIN4)  // _MIN: Minimum Base Address
                    CreateWordField (CRS2, \_SB.PCI0._Y07._MAX, MAX4)  // _MAX: Maximum Base Address
                    CreateWordField (CRS2, \_SB.PCI0._Y07._LEN, LEN4)  // _LEN: Length
                    MIN4 = IOB
                    LEN4 = IOL
                    Local1 = LEN4
                    MAX4 = (MIN4 + Local1--)
                    If (LVGA)
                    {
                        CreateWordField (CRS2, \_SB.PCI0._Y08._MIN, IMN2)  // _MIN: Minimum Base Address
                        CreateWordField (CRS2, \_SB.PCI0._Y08._MAX, IMX2)  // _MAX: Maximum Base Address
                        CreateWordField (CRS2, \_SB.PCI0._Y08._LEN, ILN2)  // _LEN: Length
                        IMN2 = 0x03B0
                        IMX2 = 0x03DF
                        ILN2 = 0x30
                        CreateDWordField (CRS2, \_SB.PCI0._Y09._MIN, VMN2)  // _MIN: Minimum Base Address
                        CreateDWordField (CRS2, \_SB.PCI0._Y09._MAX, VMX2)  // _MAX: Maximum Base Address
                        CreateDWordField (CRS2, \_SB.PCI0._Y09._LEN, VLN2)  // _LEN: Length
                        VMN2 = 0x000A0000
                        VMX2 = 0x000BFFFF
                        VLN2 = 0x00020000
                    }

                    CreateDWordField (CRS2, \_SB.PCI0._Y0A._MIN, MIN5)  // _MIN: Minimum Base Address
                    CreateDWordField (CRS2, \_SB.PCI0._Y0A._MAX, MAX5)  // _MAX: Maximum Base Address
                    CreateDWordField (CRS2, \_SB.PCI0._Y0A._LEN, LEN5)  // _LEN: Length
                    MIN5 = MBB
                    LEN5 = MBL
                    Local1 = LEN5
                    MAX5 = (MIN5 + Local1--)
                    If (MALH || MALL)
                    {
                        CreateQWordField (CRS2, \_SB.PCI0._Y0B._MIN, MN9L)  // _MIN: Minimum Base Address
                        Local0 = 0x76
                        CreateDWordField (CRS2, Local0, MN9H)
                        CreateQWordField (CRS2, \_SB.PCI0._Y0B._MAX, MX9L)  // _MAX: Maximum Base Address
                        Local1 = 0x7E
                        CreateDWordField (CRS2, Local1, MX9H)
                        CreateQWordField (CRS2, \_SB.PCI0._Y0B._LEN, LN9L)  // _LEN: Length
                        Local2 = 0x8E
                        CreateDWordField (CRS2, Local2, LN9H)
                        MN9L = MABL
                        MN9H = MABH
                        LN9L = MALL
                        LN9H = MALH
                        MX9L = MAML
                        MX9H = MAMH
                    }

                    Return (CRS2)
                }
            }

            Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
            {
                Name (SUPP, Zero)
                Name (CTRL, Zero)
                CreateDWordField (Arg3, Zero, CDW1)
                CreateDWordField (Arg3, 0x04, CDW2)
                CreateDWordField (Arg3, 0x08, CDW3)
                If (Arg0 == ToUUID ("33db4d5b-1ff7-401c-9657-7441c03dd766") /* PCI Host Bridge Device */)
                {
                    SUPP = CDW2
                    CTRL = CDW3
                    If ((SUPP & 0x16) != 0x16)
                    {
                        CTRL &= 0x1E
                    }

                    If (!PEHP)
                    {
                        CTRL &= 0x1E
                    }

                    If (!SHPC)
                    {
                        CTRL &= 0x1D
                    }

                    If (!PEPM)
                    {
                        CTRL &= 0x1B
                    }

                    If (!PEER)
                    {
                        CTRL &= 0x15
                    }

                    If (!PECS)
                    {
                        CTRL &= 0x0F
                    }

                    If (Arg1 != One)
                    {
                        CDW1 |= 0x08
                    }

                    If (CDW3 != CTRL)
                    {
                        CDW1 |= 0x10
                    }

                    CTRL &= 0x1B
                    CDW3 = CTRL
                    Return (Arg3)
                }
                Else
                {
                    CDW1 |= 0x04
                    Return (Arg3)
                }
            }

            Name (_PXM, Zero)  // _PXM: Device Proximity
            Device (IOH)
            {
                Name (_HID, EisaId ("PNP0C01"))  // _HID: Hardware ID
                Name (_UID, 0x0A)  // _UID: Unique ID
                Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                {
                    Memory32Fixed (ReadWrite,
                        0xFC000000,         // Address Base
                        0x01000000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0xFD000000,         // Address Base
                        0x01000000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0xFE000000,         // Address Base
                        0x00B00000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0xFEB00000,         // Address Base
                        0x00100000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0xFED00400,         // Address Base
                        0x0003FC00,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0xFED45000,         // Address Base
                        0x000BB000,         // Address Length
                        )
                })
            }

            Device (^UNC0)
            {
                Name (_HID, EisaId ("PNP0A03"))  // _HID: Hardware ID
                Method (_UID, 0, NotSerialized)  // _UID: Unique ID
                {
                    Local0 = (^^PCI0.BRB + ^^PCI0.BRL)
                    Return (Local0)
                }

                Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                {
                    Local0 = (^^PCI0.BRB + ^^PCI0.BRL)
                    Return (Local0)
                }

                Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
                {
                    Return (Arg3)
                }

                Name (_ADR, Zero)  // _ADR: Address
                Name (_PXM, Zero)  // _PXM: Device Proximity
                Name (CRS1, ResourceTemplate ()
                {
                    WordBusNumber (ResourceProducer, MinFixed, MaxFixed, PosDecode,
                        0x0000,             // Granularity
                        0x00FF,             // Range Minimum
                        0x00FF,             // Range Maximum
                        0x0000,             // Translation Offset
                        0x0001,             // Length
                        ,, _Y0C)
                })
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Local0 = (^^PCI0.BRB + ^^PCI0.BRL)
                    CreateWordField (CRS1, \_SB.UNC0._Y0C._MIN, UMIN)  // _MIN: Minimum Base Address
                    UMIN = Local0
                    CreateWordField (CRS1, \_SB.UNC0._Y0C._MAX, UMAX)  // _MAX: Maximum Base Address
                    UMAX = Local0
                    Return (CRS1)
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (^^PCI0.STAV)
                }
            }

            Device (VTDR)
            {
                Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
                Name (_UID, 0x04)  // _UID: Unique ID
                Name (BUF0, ResourceTemplate ()
                {
                    Memory32Fixed (ReadOnly,
                        0x00000000,         // Address Base
                        0x00002000,         // Address Length
                        _Y0D)
                })
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (VTD0 == 0xFFFFFFFF)
                    {
                        Return (Zero)
                    }

                    Return (0x0F)
                }

                Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                {
                    CreateDWordField (BUF0, \_SB.PCI0.VTDR._Y0D._BAS, VBR0)  // _BAS: Base Address
                    CreateDWordField (BUF0, \_SB.PCI0.VTDR._Y0D._LEN, VLT0)  // _LEN: Length
                    VBR0 = VTD0
                    If (VTD0 == 0xFFFFFFFF)
                    {
                        VLT0 = Zero
                    }

                    Return (BUF0)
                }
            }

            Device (SBRG)
            {
                Name (_ADR, 0x001F0000)  // _ADR: Address
                Method (SPTS, 1, NotSerialized)
                {
                    PS1S = One
                    PS1E = One
                    SLPS = One
                }

                Method (SWAK, 1, NotSerialized)
                {
                    SLPS = Zero
                    PS1E = Zero
                    If (RTCS) {}
                    Else
                    {
                        Notify (PWRB, 0x02)
                    }
                }

                OperationRegion (SMIE, SystemIO, PM30, 0x08)
                Field (SMIE, ByteAcc, NoLock, Preserve)
                {
                        ,   4, 
                    PS1E,   1, 
                        ,   31, 
                    PS1S,   1, 
                    Offset (0x08)
                }

                Scope (\_SB)
                {
                    Name (SLPS, Zero)
                    OperationRegion (PMS0, SystemIO, PMBS, 0x04)
                    Field (PMS0, ByteAcc, NoLock, Preserve)
                    {
                            ,   10, 
                        RTCS,   1, 
                            ,   3, 
                        PEXS,   1, 
                        WAKS,   1, 
                        Offset (0x03), 
                        PWBT,   1, 
                        Offset (0x04)
                    }

                    Device (SLPB)
                    {
                        Name (_HID, EisaId ("PNP0C0E"))  // _HID: Hardware ID
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            If (SUSW != 0xFF)
                            {
                                Return (0x0F)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }

                        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                        {
                            If (SUSW != 0xFF)
                            {
                                Return (Package (0x02)
                                {
                                    SUSW, 
                                    0x04
                                })
                            }
                            Else
                            {
                                Return (Package (0x02)
                                {
                                    Zero, 
                                    Zero
                                })
                            }
                        }
                    }
                }

                OperationRegion (LPC0, PCI_Config, 0x40, 0xC0)
                Field (LPC0, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x40), 
                    IOD0,   8, 
                    IOD1,   8, 
                    Offset (0xB0), 
                    RAEN,   1, 
                        ,   13, 
                    RCBA,   18
                }

                Scope (\_SB)
                {
                    Scope (PCI0)
                    {
                        Device (PCH)
                        {
                            Name (_HID, EisaId ("PNP0C01"))  // _HID: Hardware ID
                            Name (_UID, 0x01C7)  // _UID: Unique ID
                            Name (_STA, 0x0F)  // _STA: Status
                            Name (ICHR, ResourceTemplate ()
                            {
                                IO (Decode16,
                                    0x0000,             // Range Minimum
                                    0x0000,             // Range Maximum
                                    0x00,               // Alignment
                                    0x00,               // Length
                                    _Y0E)
                                IO (Decode16,
                                    0x0000,             // Range Minimum
                                    0x0000,             // Range Maximum
                                    0x00,               // Alignment
                                    0x00,               // Length
                                    _Y0F)
                                IO (Decode16,
                                    0x0000,             // Range Minimum
                                    0x0000,             // Range Maximum
                                    0x00,               // Alignment
                                    0x00,               // Length
                                    _Y10)
                                IO (Decode16,
                                    0x0000,             // Range Minimum
                                    0x0000,             // Range Maximum
                                    0x00,               // Alignment
                                    0x00,               // Length
                                    _Y11)
                                Memory32Fixed (ReadWrite,
                                    0x00000000,         // Address Base
                                    0x00000000,         // Address Length
                                    _Y13)
                                Memory32Fixed (ReadWrite,
                                    0x00000000,         // Address Base
                                    0x00000000,         // Address Length
                                    _Y12)
                                Memory32Fixed (ReadWrite,
                                    0x00000000,         // Address Base
                                    0x00000000,         // Address Length
                                    _Y14)
                                Memory32Fixed (ReadWrite,
                                    0xFF000000,         // Address Base
                                    0x01000000,         // Address Length
                                    )
                            })
                            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                            {
                                CreateWordField (ICHR, \_SB.PCI0.PCH._Y0E._MIN, PBB)  // _MIN: Minimum Base Address
                                CreateWordField (ICHR, \_SB.PCI0.PCH._Y0E._MAX, PBH)  // _MAX: Maximum Base Address
                                CreateByteField (ICHR, \_SB.PCI0.PCH._Y0E._LEN, PML)  // _LEN: Length
                                PBB = PMBS
                                PBH = PMBS
                                PML = 0x54
                                CreateWordField (ICHR, \_SB.PCI0.PCH._Y0F._MIN, P2B)  // _MIN: Minimum Base Address
                                CreateWordField (ICHR, \_SB.PCI0.PCH._Y0F._MAX, P2H)  // _MAX: Maximum Base Address
                                CreateByteField (ICHR, \_SB.PCI0.PCH._Y0F._LEN, P2L)  // _LEN: Length
                                P2B = (PMBS + 0x58)
                                P2H = (PMBS + 0x58)
                                P2L = 0x28
                                If (SMBS)
                                {
                                    CreateWordField (ICHR, \_SB.PCI0.PCH._Y10._MIN, SMB)  // _MIN: Minimum Base Address
                                    CreateWordField (ICHR, \_SB.PCI0.PCH._Y10._MAX, SMH)  // _MAX: Maximum Base Address
                                    CreateByteField (ICHR, \_SB.PCI0.PCH._Y10._LEN, SML)  // _LEN: Length
                                    SMB = SMBS
                                    SMH = SMBS
                                    SML = SMBL
                                }

                                If (GPBS)
                                {
                                    CreateWordField (ICHR, \_SB.PCI0.PCH._Y11._MIN, IGB)  // _MIN: Minimum Base Address
                                    CreateWordField (ICHR, \_SB.PCI0.PCH._Y11._MAX, IGH)  // _MAX: Maximum Base Address
                                    CreateByteField (ICHR, \_SB.PCI0.PCH._Y11._LEN, IGL)  // _LEN: Length
                                    IGB = GPBS
                                    IGH = GPBS
                                    IGL = GPLN
                                }

                                If (APCB)
                                {
                                    CreateDWordField (ICHR, \_SB.PCI0.PCH._Y12._BAS, APB)  // _BAS: Base Address
                                    CreateDWordField (ICHR, \_SB.PCI0.PCH._Y12._LEN, APL)  // _LEN: Length
                                    APB = APCB
                                    APL = APCL
                                }

                                CreateDWordField (ICHR, \_SB.PCI0.PCH._Y13._BAS, RCB)  // _BAS: Base Address
                                CreateDWordField (ICHR, \_SB.PCI0.PCH._Y13._LEN, RCL)  // _LEN: Length
                                RCB = SRCB
                                RCL = SRCL
                                If (TCBR)
                                {
                                    CreateDWordField (ICHR, \_SB.PCI0.PCH._Y14._BAS, TCB)  // _BAS: Base Address
                                    CreateDWordField (ICHR, \_SB.PCI0.PCH._Y14._LEN, TCL)  // _LEN: Length
                                    TCB = TCBR
                                    TCL = TCLT
                                }

                                Return (ICHR)
                            }
                        }

                        Device (CWDT)
                        {
                            Name (_HID, EisaId ("INT3F0D"))  // _HID: Hardware ID
                            Name (_CID, EisaId ("PNP0C02"))  // _CID: Compatible ID
                            Name (BUF0, ResourceTemplate ()
                            {
                                IO (Decode16,
                                    0x0454,             // Range Minimum
                                    0x0454,             // Range Maximum
                                    0x04,               // Alignment
                                    0x04,               // Length
                                    _Y15)
                            })
                            Method (_STA, 0, Serialized)  // _STA: Status
                            {
                                Return (0x0F)
                            }

                            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                            {
                                CreateWordField (BUF0, \_SB.PCI0.CWDT._Y15._MIN, WDB)  // _MIN: Minimum Base Address
                                CreateWordField (BUF0, \_SB.PCI0.CWDT._Y15._MAX, WDH)  // _MAX: Maximum Base Address
                                WDB = (PMBS + 0x54)
                                WDH = (PMBS + 0x54)
                                Return (BUF0)
                            }
                        }
                    }
                }

                Device (SIO1)
                {
                    Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
                    Name (_UID, 0x0111)  // _UID: Unique ID
                    Name (CRS, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x00,               // Alignment
                            0x00,               // Length
                            _Y16)
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x00,               // Alignment
                            0x00,               // Length
                            _Y17)
                    })
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        If ((SP1O < 0x03F0) && (SP1O > 0xF0))
                        {
                            CreateWordField (CRS, \_SB.PCI0.SBRG.SIO1._Y16._MIN, GPI0)  // _MIN: Minimum Base Address
                            CreateWordField (CRS, \_SB.PCI0.SBRG.SIO1._Y16._MAX, GPI1)  // _MAX: Maximum Base Address
                            CreateByteField (CRS, \_SB.PCI0.SBRG.SIO1._Y16._LEN, GPIL)  // _LEN: Length
                            GPI0 = SP1O
                            GPI1 = SP1O
                            GPIL = 0x02
                        }

                        If (IO2B)
                        {
                            CreateWordField (CRS, \_SB.PCI0.SBRG.SIO1._Y17._MIN, GP30)  // _MIN: Minimum Base Address
                            CreateWordField (CRS, \_SB.PCI0.SBRG.SIO1._Y17._MAX, GP31)  // _MAX: Maximum Base Address
                            CreateByteField (CRS, \_SB.PCI0.SBRG.SIO1._Y17._LEN, GPL3)  // _LEN: Length
                            GP30 = IO2B
                            GP31 = IO2B
                            GPL3 = IO2L
                        }

                        Return (CRS)
                    }

                    Name (DCAT, Package (0x15)
                    {
                        0x04, 
                        0xFF, 
                        0xFF, 
                        0xFF, 
                        0xFF, 
                        0xFF, 
                        0xFF, 
                        0xFF, 
                        0xFF, 
                        0xFF, 
                        0x07, 
                        0xFF, 
                        0xFF, 
                        0xFF, 
                        0xFF, 
                        0xFF, 
                        0xFF, 
                        0xFF, 
                        0x10, 
                        0xFF, 
                        0xFF
                    })
                    Mutex (MUT0, 0x00)
                    Method (ENFG, 1, NotSerialized)
                    {
                        INDX = 0x55
                        LDN = Arg0
                    }

                    Method (EXFG, 0, NotSerialized)
                    {
                        INDX = 0xAA
                        Release (MUT0)
                    }

                    OperationRegion (IOID, SystemIO, SP1O, 0x02)
                    Field (IOID, ByteAcc, NoLock, Preserve)
                    {
                        INDX,   8, 
                        DATA,   8
                    }

                    IndexField (INDX, DATA, ByteAcc, NoLock, Preserve)
                    {
                        Offset (0x07), 
                        LDN,    8, 
                        Offset (0x21), 
                        SCF1,   8, 
                        SCF2,   8, 
                        SCF3,   8, 
                        SCF4,   8, 
                        SCF5,   8, 
                        SCF6,   8, 
                        Offset (0x29), 
                        CKCF,   8, 
                        Offset (0x30), 
                        ACTR,   8, 
                        Offset (0x55), 
                        SR55,   8, 
                        Offset (0x60), 
                        IOAH,   8, 
                        IOAL,   8, 
                        IOH2,   8, 
                        IOL2,   8, 
                        Offset (0x70), 
                        INTR,   8, 
                        Offset (0x74), 
                        DMCH,   8, 
                        Offset (0xAA), 
                        SRAA,   8, 
                        Offset (0xE0), 
                        RGE0,   8, 
                        RGE1,   8, 
                        RGE2,   8, 
                        RGE3,   8, 
                        RGE4,   8, 
                        RGE5,   8, 
                        RGE6,   8, 
                        RGE7,   8, 
                        RGE8,   8, 
                        RGE9,   8, 
                        Offset (0xF0), 
                        OPT0,   8, 
                        OPT1,   8, 
                        OPT2,   8, 
                        OPT3,   8, 
                        OPT4,   8, 
                        OPT5,   8, 
                        OPT6,   8, 
                        OPT7,   8, 
                        OPT8,   8, 
                        OPT9,   8
                    }

                    OperationRegion (RNTR, SystemIO, IO2B, IO2L)
                    Field (RNTR, ByteAcc, NoLock, Preserve)
                    {
                        PMS1,   8, 
                        PMS2,   8, 
                        PME1,   8, 
                        PME2,   8, 
                        PMC1,   8, 
                        PMC2,   8
                    }

                    Method (CGLD, 1, NotSerialized)
                    {
                        Return (DerefOf (DCAT [Arg0]))
                    }

                    Method (DSTA, 1, NotSerialized)
                    {
                        ENFG (CGLD (Arg0))
                        Local0 = ACTR
                        EXFG ()
                        If (Local0 == 0xFF)
                        {
                            Return (Zero)
                        }

                        Local0 &= One
                        If (Arg0 >= 0x10)
                        {
                            IOES |= (Local0 << (Arg0 & 0x0F))
                        }
                        Else
                        {
                            IOST |= (Local0 << Arg0)
                        }

                        If (Local0)
                        {
                            Return (0x0F)
                        }
                        ElseIf (Arg0 >= 0x10)
                        {
                            Local0 = IOES
                        }
                        Else
                        {
                            Local0 = IOST
                        }
                    }

                    Method (DCNT, 2, NotSerialized)
                    {
                        ENFG (CGLD (Arg0))
                        If ((DMCH < 0x04) && ((Local1 = (DMCH & 0x03)) != Zero))
                        {
                            RDMA (Arg0, Arg1, Local1++)
                        }

                        ACTR = Arg1
                        Local1 = (IOAH << 0x08)
                        Local1 |= IOAL
                        RRIO (Arg0, Arg1, Local1, 0x08)
                        EXFG ()
                    }

                    Name (CRS1, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x01,               // Alignment
                            0x00,               // Length
                            _Y1A)
                        IRQNoFlags (_Y18)
                            {}
                        DMA (Compatibility, NotBusMaster, Transfer8, _Y19)
                            {}
                    })
                    CreateWordField (CRS1, \_SB.PCI0.SBRG.SIO1._Y18._INT, IRQM)  // _INT: Interrupts
                    CreateByteField (CRS1, \_SB.PCI0.SBRG.SIO1._Y19._DMA, DMAM)  // _DMA: Direct Memory Access
                    CreateWordField (CRS1, \_SB.PCI0.SBRG.SIO1._Y1A._MIN, IO11)  // _MIN: Minimum Base Address
                    CreateWordField (CRS1, \_SB.PCI0.SBRG.SIO1._Y1A._MAX, IO12)  // _MAX: Maximum Base Address
                    CreateByteField (CRS1, \_SB.PCI0.SBRG.SIO1._Y1A._LEN, LEN1)  // _LEN: Length
                    Name (CRS2, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x01,               // Alignment
                            0x00,               // Length
                            _Y1D)
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x01,               // Alignment
                            0x00,               // Length
                            _Y1E)
                        IRQNoFlags (_Y1B)
                            {}
                        DMA (Compatibility, NotBusMaster, Transfer8, _Y1C)
                            {2}
                    })
                    CreateWordField (CRS2, \_SB.PCI0.SBRG.SIO1._Y1B._INT, IRQE)  // _INT: Interrupts
                    CreateByteField (CRS2, \_SB.PCI0.SBRG.SIO1._Y1C._DMA, DMAE)  // _DMA: Direct Memory Access
                    CreateWordField (CRS2, \_SB.PCI0.SBRG.SIO1._Y1D._MIN, IO21)  // _MIN: Minimum Base Address
                    CreateWordField (CRS2, \_SB.PCI0.SBRG.SIO1._Y1D._MAX, IO22)  // _MAX: Maximum Base Address
                    CreateByteField (CRS2, \_SB.PCI0.SBRG.SIO1._Y1D._LEN, LEN2)  // _LEN: Length
                    CreateWordField (CRS2, \_SB.PCI0.SBRG.SIO1._Y1E._MIN, IO31)  // _MIN: Minimum Base Address
                    CreateWordField (CRS2, \_SB.PCI0.SBRG.SIO1._Y1E._MAX, IO32)  // _MAX: Maximum Base Address
                    CreateByteField (CRS2, \_SB.PCI0.SBRG.SIO1._Y1E._LEN, LEN3)  // _LEN: Length
                    Name (CRS4, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x01,               // Alignment
                            0x00,               // Length
                            _Y20)
                        IRQ (Edge, ActiveLow, Shared, _Y1F)
                            {}
                    })
                    CreateWordField (CRS4, \_SB.PCI0.SBRG.SIO1._Y1F._INT, IRQL)  // _INT: Interrupts
                    CreateWordField (CRS4, \_SB.PCI0.SBRG.SIO1._Y20._MIN, IOHL)  // _MIN: Minimum Base Address
                    CreateWordField (CRS4, \_SB.PCI0.SBRG.SIO1._Y20._MAX, IORL)  // _MAX: Maximum Base Address
                    CreateByteField (CRS4, \_SB.PCI0.SBRG.SIO1._Y20._ALN, ALMN)  // _ALN: Alignment
                    CreateByteField (CRS4, \_SB.PCI0.SBRG.SIO1._Y20._LEN, LENG)  // _LEN: Length
                    Method (DCRS, 2, NotSerialized)
                    {
                        ENFG (CGLD (Arg0))
                        IO11 = (IOAH << 0x08)
                        IO11 |= IOAL
                        IO12 = IO11
                        LEN1 = 0x08
                        If (INTR)
                        {
                            IRQM = (One << INTR)
                        }
                        Else
                        {
                            IRQM = Zero
                        }

                        If ((DMCH > 0x03) || (Arg1 == Zero))
                        {
                            DMAM = Zero
                        }
                        Else
                        {
                            Local1 = (DMCH & 0x03)
                            DMAM = (One << Local1)
                        }

                        EXFG ()
                        Return (CRS1)
                    }

                    Method (DCR2, 2, NotSerialized)
                    {
                        ENFG (CGLD (Arg0))
                        IO21 = (IOAH << 0x08)
                        IO21 |= IOAL
                        IO22 = IO21
                        LEN2 = 0x08
                        IO31 = (IOH2 << 0x08)
                        IO31 |= IOL2
                        IO32 = IO21
                        LEN3 = 0x08
                        If (INTR)
                        {
                            IRQE = (One << INTR)
                        }
                        Else
                        {
                            IRQE = Zero
                        }

                        If ((DMCH > 0x03) || (Arg1 == Zero))
                        {
                            DMAE = Zero
                        }
                        Else
                        {
                            Local1 = (DMCH & 0x03)
                            DMAE = (One << Local1)
                        }

                        EXFG ()
                        Return (CRS2)
                    }

                    Method (DCR4, 2, NotSerialized)
                    {
                        ENFG (CGLD (Arg0))
                        IOHL = (IOAH << 0x08)
                        IOHL |= IOAL
                        IORL = IOHL
                        LENG = 0x08
                        If (INTR)
                        {
                            INTR &= 0x0F
                            IRQL = (One << INTR)
                        }
                        Else
                        {
                            IRQL = Zero
                        }

                        EXFG ()
                        Return (CRS4)
                    }

                    Method (DSRS, 2, NotSerialized)
                    {
                        If (Arg1 == 0x02)
                        {
                            CreateWordField (Arg0, 0x09, IRQM)
                            CreateByteField (Arg0, 0x0C, DMAM)
                            CreateWordField (Arg0, 0x02, IO11)
                            ENFG (CGLD (Arg1))
                            IOAL = (IO11 & 0xFF)
                            IOAH = (IO11 >> 0x08)
                            If (IRQM)
                            {
                                FindSetRightBit (IRQM, Local0)
                                INTR = (Local0 - One)
                            }
                            Else
                            {
                                INTR = Zero
                            }

                            If (DMAM)
                            {
                                FindSetRightBit (DMAM, Local0)
                                DMCH = (Local0 - One)
                            }
                            Else
                            {
                                DMCH = 0x04
                            }

                            EXFG ()
                            DCNT (Arg1, One)
                            Local2 = Arg1
                            If (Local2 > Zero)
                            {
                                Local2 -= One
                            }
                        }
                    }

                    Method (DSR2, 2, NotSerialized)
                    {
                        CreateWordField (Arg0, 0x11, IRQT)
                        CreateByteField (Arg0, 0x14, DMAT)
                        CreateWordField (Arg0, 0x02, IOT1)
                        CreateWordField (Arg0, 0x0A, IOT2)
                        ENFG (CGLD (Arg1))
                        IOAL = (IOT1 & 0xFF)
                        IOAH = (IOT1 >> 0x08)
                        IOL2 = (IOT2 & 0xFF)
                        IOH2 = (IOT2 >> 0x08)
                        If (IRQT)
                        {
                            FindSetRightBit (IRQT, Local0)
                            INTR = (Local0 - One)
                        }
                        Else
                        {
                            INTR = Zero
                        }

                        If (DMAT)
                        {
                            FindSetRightBit (DMAT, Local0)
                            DMCH = (Local0 - One)
                        }
                        Else
                        {
                            DMCH = 0x04
                        }

                        EXFG ()
                        DCNT (Arg1, One)
                        Local2 = Arg1
                        If (Local2 > Zero)
                        {
                            Local2 -= One
                        }
                    }

                    Method (DSR4, 2, NotSerialized)
                    {
                        CreateWordField (Arg0, 0x02, IOHL)
                        CreateWordField (Arg0, 0x09, IRQL)
                        ENFG (CGLD (Arg1))
                        IOAL = (IOHL & 0xFF)
                        IOAH = (IOHL >> 0x08)
                        If (IRQL)
                        {
                            FindSetRightBit (IRQL, Local0)
                            INTR = (Local0 - One)
                        }
                        Else
                        {
                            INTR = Zero
                        }

                        EXFG ()
                        DCNT (Arg1, One)
                        Local2 = Arg1
                        If (Local2 > Zero)
                        {
                            Local2 -= One
                        }
                    }
                }

                Name (PMFG, Zero)
                Method (SIOS, 1, NotSerialized)
                {
                    Debug = "SIOS"
                }

                Method (SIOW, 1, NotSerialized)
                {
                    Debug = "SIOW"
                }

                Method (SIOH, 0, NotSerialized)
                {
                    If (PMFG & 0x08)
                    {
                        Notify (PS2K, 0x02)
                    }

                    If (PMFG & 0x10)
                    {
                        Notify (PS2M, 0x02)
                    }
                }

                Device (UAR1)
                {
                    Name (_HID, EisaId ("PNP0501"))  // _HID: Hardware ID
                    Method (_UID, 0, NotSerialized)  // _UID: Unique ID
                    {
                        ^^SIO1.SR55 = Zero
                        ^^SIO1.LDN = 0x04
                        Local2 = ^^SIO1.IOAL
                        Local3 = ^^SIO1.IOAH
                        If (Local3 == 0x03)
                        {
                            If (Local2 == 0xF8)
                            {
                                Return (One)
                            }
                            Else
                            {
                                Return (One)
                            }
                        }
                        ElseIf (Local2 == 0xF8)
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (One)
                        }

                        ^^SIO1.SRAA = Zero
                    }

                    Method (_STA, 0, Serialized)  // _STA: Status
                    {
                        If (IOST & One)
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                    {
                        ^^SIO1.SR55 = Zero
                        ^^SIO1.ACTR = Zero
                        ^^SIO1.SRAA = Zero
                    }

                    Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                    {
                        Name (BUF0, ResourceTemplate ()
                        {
                            IO (Decode16,
                                0x03F8,             // Range Minimum
                                0x03F8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                _Y21)
                            IRQNoFlags (_Y22)
                                {4}
                        })
                        CreateWordField (BUF0, \_SB.PCI0.SBRG.UAR1._CRS._Y21._MIN, IOL0)  // _MIN: Minimum Base Address
                        CreateByteField (BUF0, 0x03, IOH0)
                        CreateWordField (BUF0, \_SB.PCI0.SBRG.UAR1._CRS._Y21._MAX, IOL1)  // _MAX: Maximum Base Address
                        CreateByteField (BUF0, 0x05, IOH1)
                        CreateByteField (BUF0, \_SB.PCI0.SBRG.UAR1._CRS._Y21._LEN, LEN0)  // _LEN: Length
                        CreateWordField (BUF0, \_SB.PCI0.SBRG.UAR1._CRS._Y22._INT, IRQW)  // _INT: Interrupts
                        ^^SIO1.SR55 = Zero
                        ^^SIO1.LDN = 0x04
                        IOL0 = ^^SIO1.IOAL
                        IOL1 = ^^SIO1.IOAL
                        IOH0 = ^^SIO1.IOAH
                        IOH1 = ^^SIO1.IOAH
                        LEN0 = 0x08
                        Local0 = (^^SIO1.INTR & 0x0F)
                        If (Local0)
                        {
                            IRQW = (One << Local0)
                        }
                        Else
                        {
                            IRQW = Zero
                        }

                        ^^SIO1.SRAA = Zero
                        Return (BUF0)
                    }

                    Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                    {
                        StartDependentFn (0x00, 0x00)
                        {
                            IO (Decode16,
                                0x03F8,             // Range Minimum
                                0x03F8,             // Range Maximum
                                0x08,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {4}
                        }
                        StartDependentFn (0x00, 0x01)
                        {
                            IO (Decode16,
                                0x02F8,             // Range Minimum
                                0x02F8,             // Range Maximum
                                0x08,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {3}
                        }
                        StartDependentFn (0x00, 0x00)
                        {
                            IO (Decode16,
                                0x03E8,             // Range Minimum
                                0x03E8,             // Range Maximum
                                0x08,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {4}
                        }
                        StartDependentFn (0x00, 0x01)
                        {
                            IO (Decode16,
                                0x02E8,             // Range Minimum
                                0x02E8,             // Range Maximum
                                0x08,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {3}
                        }
                        EndDependentFn ()
                    })
                    Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                    {
                        CreateByteField (Arg0, 0x02, IOLO)
                        CreateByteField (Arg0, 0x03, IOHI)
                        CreateWordField (Arg0, 0x09, IRQW)
                        ^^SIO1.SR55 = Zero
                        ^^SIO1.LDN = 0x04
                        ^^SIO1.IOAL = IOLO
                        ^^SIO1.IOAH = IOHI
                        FindSetRightBit (IRQW, Local0)
                        If (IRQW != Zero)
                        {
                            Local0--
                        }

                        ^^SIO1.INTR = Local0
                        IOD0 &= 0x8F
                        If (IOHI == 0x03)
                        {
                            If (IOLO == 0xF8)
                            {
                                IOD0 |= Zero
                            }
                            Else
                            {
                                IOD0 |= 0x70
                            }
                        }
                        ElseIf (IOLO == 0xF8)
                        {
                            IOD0 |= 0x10
                        }
                        Else
                        {
                            IOD0 |= 0x50
                        }

                        ^^SIO1.ACTR = One
                        ^^SIO1.SRAA = Zero
                    }

                    Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                    {
                        ^^SIO1.SR55 = Zero
                        ^^SIO1.SCF2 = (^^SIO1.SCF2 | 0x10)
                        ^^SIO1.SRAA = Zero
                    }

                    Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                    {
                        ^^SIO1.SR55 = Zero
                        ^^SIO1.SCF2 = (^^SIO1.SCF2 & 0xEF)
                        ^^SIO1.SRAA = Zero
                    }
                }

                Device (IPIC)
                {
                    Name (_HID, EisaId ("PNP0000"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0020,             // Range Minimum
                            0x0020,             // Range Maximum
                            0x00,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A0,             // Range Minimum
                            0x00A0,             // Range Maximum
                            0x00,               // Alignment
                            0x02,               // Length
                            )
                    })
                }

                Device (DMAC)
                {
                    Name (_HID, EisaId ("PNP0200"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        DMA (Compatibility, BusMaster, Transfer8, )
                            {4}
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x0081,             // Range Minimum
                            0x0081,             // Range Maximum
                            0x00,               // Alignment
                            0x03,               // Length
                            )
                        IO (Decode16,
                            0x0087,             // Range Minimum
                            0x0087,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0089,             // Range Minimum
                            0x0089,             // Range Maximum
                            0x00,               // Alignment
                            0x03,               // Length
                            )
                        IO (Decode16,
                            0x008F,             // Range Minimum
                            0x008F,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x00C0,             // Range Minimum
                            0x00C0,             // Range Maximum
                            0x00,               // Alignment
                            0x20,               // Length
                            )
                    })
                }

                Device (TIMR)
                {
                    Name (_HID, EisaId ("PNP0100"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0040,             // Range Minimum
                            0x0040,             // Range Maximum
                            0x00,               // Alignment
                            0x04,               // Length
                            )
                    })
                }

                Device (RTC)
                {
                    Name (_HID, EisaId ("PNP0B00"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0070,             // Range Minimum
                            0x0070,             // Range Maximum
                            0x00,               // Alignment
                            0x02,               // Length
                            )
                    })
                }

                Device (SPKR)
                {
                    Name (_HID, EisaId ("PNP0800"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0061,             // Range Minimum
                            0x0061,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                    })
                }

                Device (RMSC)
                {
                    Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
                    Name (_UID, 0x10)  // _UID: Unique ID
                    Name (CRS1, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0010,             // Range Minimum
                            0x0010,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x0022,             // Range Minimum
                            0x0022,             // Range Maximum
                            0x00,               // Alignment
                            0x1E,               // Length
                            )
                        IO (Decode16,
                            0x0044,             // Range Minimum
                            0x0044,             // Range Maximum
                            0x00,               // Alignment
                            0x1C,               // Length
                            )
                        IO (Decode16,
                            0x0062,             // Range Minimum
                            0x0062,             // Range Maximum
                            0x00,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0065,             // Range Minimum
                            0x0065,             // Range Maximum
                            0x00,               // Alignment
                            0x0B,               // Length
                            )
                        IO (Decode16,
                            0x0072,             // Range Minimum
                            0x0072,             // Range Maximum
                            0x00,               // Alignment
                            0x0E,               // Length
                            )
                        IO (Decode16,
                            0x0080,             // Range Minimum
                            0x0080,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0084,             // Range Minimum
                            0x0084,             // Range Maximum
                            0x00,               // Alignment
                            0x03,               // Length
                            )
                        IO (Decode16,
                            0x0088,             // Range Minimum
                            0x0088,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x008C,             // Range Minimum
                            0x008C,             // Range Maximum
                            0x00,               // Alignment
                            0x03,               // Length
                            )
                        IO (Decode16,
                            0x0090,             // Range Minimum
                            0x0090,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x00A2,             // Range Minimum
                            0x00A2,             // Range Maximum
                            0x00,               // Alignment
                            0x1E,               // Length
                            )
                        IO (Decode16,
                            0x00E0,             // Range Minimum
                            0x00E0,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x04D0,             // Range Minimum
                            0x04D0,             // Range Maximum
                            0x00,               // Alignment
                            0x02,               // Length
                            )
                    })
                    Name (CRS2, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0010,             // Range Minimum
                            0x0010,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x0022,             // Range Minimum
                            0x0022,             // Range Maximum
                            0x00,               // Alignment
                            0x1E,               // Length
                            )
                        IO (Decode16,
                            0x0044,             // Range Minimum
                            0x0044,             // Range Maximum
                            0x00,               // Alignment
                            0x1C,               // Length
                            )
                        IO (Decode16,
                            0x0072,             // Range Minimum
                            0x0072,             // Range Maximum
                            0x00,               // Alignment
                            0x0E,               // Length
                            )
                        IO (Decode16,
                            0x0080,             // Range Minimum
                            0x0080,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0084,             // Range Minimum
                            0x0084,             // Range Maximum
                            0x00,               // Alignment
                            0x03,               // Length
                            )
                        IO (Decode16,
                            0x0088,             // Range Minimum
                            0x0088,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x008C,             // Range Minimum
                            0x008C,             // Range Maximum
                            0x00,               // Alignment
                            0x03,               // Length
                            )
                        IO (Decode16,
                            0x0090,             // Range Minimum
                            0x0090,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x00A2,             // Range Minimum
                            0x00A2,             // Range Maximum
                            0x00,               // Alignment
                            0x1E,               // Length
                            )
                        IO (Decode16,
                            0x00E0,             // Range Minimum
                            0x00E0,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x04D0,             // Range Minimum
                            0x04D0,             // Range Maximum
                            0x00,               // Alignment
                            0x02,               // Length
                            )
                    })
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        If (MBEC & 0xFFFF)
                        {
                            Return (CRS1)
                        }
                        Else
                        {
                            Return (CRS2)
                        }
                    }
                }

                Device (MATH)
                {
                    Name (_HID, EisaId ("PNP0C04"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x00F0,             // Range Minimum
                            0x00F0,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IRQNoFlags ()
                            {13}
                    })
                }

                Device (PS2K)
                {
                    Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
                    {
                        Return (HIDK)
                    }

                    Method (_CID, 0, NotSerialized)  // _CID: Compatible ID
                    {
                        Return (CIDK)
                    }

                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (IOST & 0x0400)
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0060,             // Range Minimum
                            0x0060,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0064,             // Range Minimum
                            0x0064,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IRQNoFlags ()
                            {1}
                    })
                    Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                    {
                        StartDependentFn (0x00, 0x00)
                        {
                            IO (Decode16,
                                0x0060,             // Range Minimum
                                0x0060,             // Range Maximum
                                0x00,               // Alignment
                                0x01,               // Length
                                )
                            IO (Decode16,
                                0x0064,             // Range Minimum
                                0x0064,             // Range Maximum
                                0x00,               // Alignment
                                0x01,               // Length
                                )
                            IRQNoFlags ()
                                {1}
                        }
                        EndDependentFn ()
                    })
                    Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                    {
                        KBFG = Arg0
                    }
                }

                Scope (\)
                {
                    Name (KBFG, One)
                }

                Method (PS2K._PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x08, 0x03))
                }

                Device (PS2M)
                {
                    Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
                    {
                        Return (HIDM)
                    }

                    Method (_CID, 0, NotSerialized)  // _CID: Compatible ID
                    {
                        Return (CIDM)
                    }

                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (IOST & 0x4000)
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    Name (CRS1, ResourceTemplate ()
                    {
                        IRQNoFlags ()
                            {12}
                    })
                    Name (CRS2, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0060,             // Range Minimum
                            0x0060,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0064,             // Range Minimum
                            0x0064,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IRQNoFlags ()
                            {12}
                    })
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        If (IOST & 0x0400)
                        {
                            Return (CRS1)
                        }
                        Else
                        {
                            Return (CRS2)
                        }
                    }

                    Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                    {
                        StartDependentFn (0x00, 0x00)
                        {
                            IRQNoFlags ()
                                {12}
                        }
                        EndDependentFn ()
                    })
                    Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                    {
                        MSFG = Arg0
                    }
                }

                Scope (\)
                {
                    Name (MSFG, One)
                }

                Method (PS2M._PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x08, 0x03))
                }
            }

            Device (P0P9)
            {
                Name (_ADR, 0x001E0000)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x0B, 0x03))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR09)
                    }

                    Return (PR09)
                }
            }

            Device (SAT0)
            {
                Name (_ADR, 0x001F0002)  // _ADR: Address
                Name (^NATA, Package (0x01)
                {
                    0x001F0002
                })
                Name (\FZTF, Buffer (0x07)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF5       
                })
                Name (REGF, One)
                Method (_REG, 2, NotSerialized)  // _REG: Region Availability
                {
                    If (Arg0 == 0x02)
                    {
                        REGF = Arg1
                    }
                }

                Name (TIM0, Package (0x08)
                {
                    Package (0x04)
                    {
                        0x78, 
                        0xB4, 
                        0xF0, 
                        0x0384
                    }, 

                    Package (0x04)
                    {
                        0x23, 
                        0x21, 
                        0x10, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0x0B, 
                        0x09, 
                        0x04, 
                        Zero
                    }, 

                    Package (0x06)
                    {
                        0x78, 
                        0x5A, 
                        0x3C, 
                        0x28, 
                        0x1E, 
                        0x14
                    }, 

                    Package (0x06)
                    {
                        Zero, 
                        One, 
                        0x02, 
                        One, 
                        0x02, 
                        One
                    }, 

                    Package (0x06)
                    {
                        Zero, 
                        Zero, 
                        Zero, 
                        One, 
                        One, 
                        One
                    }, 

                    Package (0x04)
                    {
                        0x04, 
                        0x03, 
                        0x02, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0x02, 
                        One, 
                        Zero, 
                        Zero
                    }
                })
                Name (TMD0, Buffer (0x14) {})
                CreateDWordField (TMD0, Zero, PIO0)
                CreateDWordField (TMD0, 0x04, DMA0)
                CreateDWordField (TMD0, 0x08, PIO1)
                CreateDWordField (TMD0, 0x0C, DMA1)
                CreateDWordField (TMD0, 0x10, CHNF)
                OperationRegion (CFG2, PCI_Config, 0x40, 0x20)
                Field (CFG2, DWordAcc, NoLock, Preserve)
                {
                    PMPT,   4, 
                    PSPT,   4, 
                    PMRI,   6, 
                    Offset (0x02), 
                    SMPT,   4, 
                    SSPT,   4, 
                    SMRI,   6, 
                    Offset (0x04), 
                    PSRI,   4, 
                    SSRI,   4, 
                    Offset (0x08), 
                    PM3E,   1, 
                    PS3E,   1, 
                    SM3E,   1, 
                    SS3E,   1, 
                    Offset (0x0A), 
                    PMUT,   2, 
                        ,   2, 
                    PSUT,   2, 
                    Offset (0x0B), 
                    SMUT,   2, 
                        ,   2, 
                    SSUT,   2, 
                    Offset (0x0C), 
                    Offset (0x14), 
                    PM6E,   1, 
                    PS6E,   1, 
                    SM6E,   1, 
                    SS6E,   1, 
                    PMCR,   1, 
                    PSCR,   1, 
                    SMCR,   1, 
                    SSCR,   1, 
                        ,   4, 
                    PMAE,   1, 
                    PSAE,   1, 
                    SMAE,   1, 
                    SSAE,   1
                }

                Name (GMPT, Zero)
                Name (GMUE, Zero)
                Name (GMUT, Zero)
                Name (GMCR, Zero)
                Name (GSPT, Zero)
                Name (GSUE, Zero)
                Name (GSUT, Zero)
                Name (GSCR, Zero)
                Device (PRT0)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Method (_GTM, 0, NotSerialized)  // _GTM: Get Timing Mode
                    {
                        Local1 = (PSCR << One)
                        Local0 = (PMCR | Local1)
                        Local3 = (PMAE << 0x02)
                        Local4 = (PM6E << One)
                        Local3 |= Local4
                        Local1 = (PM3E | Local3)
                        Local3 = (PMPT << 0x04)
                        Local1 |= Local3
                        Local3 = (PSAE << 0x02)
                        Local4 = (PS6E << One)
                        Local3 |= Local4
                        Local2 = (PS3E | Local3)
                        Local3 = (PSPT << 0x04)
                        Local2 |= Local3
                        Return (GTM (PMRI, Local1, PMUT, PSRI, Local2, PSUT, Local0))
                    }

                    Method (_STM, 3, NotSerialized)  // _STM: Set Timing Mode
                    {
                        Debug = Arg0
                        TMD0 = Arg0
                        Local3 = (PMAE << 0x02)
                        Local4 = (PM6E << One)
                        Local3 |= Local4
                        Local0 = (PM3E | Local3)
                        Local3 = (PMPT << 0x04)
                        Local0 |= Local3
                        Local3 = (PSAE << 0x02)
                        Local4 = (PS6E << One)
                        Local3 |= Local4
                        Local1 = (PS3E | Local3)
                        Local3 = (PSPT << 0x04)
                        Local1 |= Local3
                        GMPT = PMRI
                        GMUE = Local0
                        GMUT = PMUT
                        GMCR = PMCR
                        GSPT = PSRI
                        GSUE = Local1
                        GSUT = PSUT
                        GSCR = PSCR
                        STM ()
                        PMRI = GMPT
                        Local0 = GMUE
                        PMUT = GMUT
                        PMCR = GMCR
                        Local1 = GSUE
                        PSUT = GSUT
                        PSCR = GSCR
                        If (Local0 & One)
                        {
                            PM3E = One
                        }
                        Else
                        {
                            PM3E = Zero
                        }

                        If (Local0 & 0x02)
                        {
                            PM6E = One
                        }
                        Else
                        {
                            PM6E = Zero
                        }

                        If (Local0 & 0x04)
                        {
                            PMAE = One
                        }
                        Else
                        {
                            PMAE = Zero
                        }

                        If (Local1 & One)
                        {
                            PS3E = One
                        }
                        Else
                        {
                            PS3E = Zero
                        }

                        If (Local1 & 0x02)
                        {
                            PS6E = One
                        }
                        Else
                        {
                            PS6E = Zero
                        }

                        If (Local1 & 0x04)
                        {
                            PSAE = One
                        }
                        Else
                        {
                            PSAE = Zero
                        }

                        ATA0 = GTF (Zero, Arg1)
                        ATA1 = GTF (One, Arg2)
                    }

                    Device (DRV0)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                        {
                            Return (RATA (ATA0))
                        }
                    }

                    Device (DRV1)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                        {
                            Return (RATA (ATA1))
                        }
                    }
                }

                Device (PRT1)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Method (_GTM, 0, NotSerialized)  // _GTM: Get Timing Mode
                    {
                        Local1 = (SSCR << One)
                        Local0 = (SMCR | Local1)
                        Local3 = (SMAE << 0x02)
                        Local4 = (SM6E << One)
                        Local3 |= Local4
                        Local1 = (SM3E | Local3)
                        Local3 = (SMPT << 0x04)
                        Local1 |= Local3
                        Local3 = (SSAE << 0x02)
                        Local4 = (SS6E << One)
                        Local3 |= Local4
                        Local2 = (SS3E | Local3)
                        Local3 = (SSPT << 0x04)
                        Local2 |= Local3
                        Return (GTM (SMRI, Local1, SMUT, SSRI, Local2, SSUT, Local0))
                    }

                    Method (_STM, 3, NotSerialized)  // _STM: Set Timing Mode
                    {
                        Debug = Arg0
                        TMD0 = Arg0
                        Local3 = (SMAE << 0x02)
                        Local4 = (SM6E << One)
                        Local3 |= Local4
                        Local0 = (SM3E | Local3)
                        Local3 = (SMPT << 0x04)
                        Local0 |= Local3
                        Local3 = (SSAE << 0x02)
                        Local4 = (SS6E << One)
                        Local3 |= Local4
                        Local1 = (SS3E | Local3)
                        Local3 = (SSPT << 0x04)
                        Local1 |= Local3
                        GMPT = SMRI
                        GMUE = Local0
                        GMUT = SMUT
                        GMCR = SMCR
                        GSPT = SSRI
                        GSUE = Local1
                        GSUT = SSUT
                        GSCR = SSCR
                        STM ()
                        SMRI = GMPT
                        Local0 = GMUE
                        SMUT = GMUT
                        SMCR = GMCR
                        Local1 = GSUE
                        SSUT = GSUT
                        SSCR = GSCR
                        If (Local0 & One)
                        {
                            SM3E = One
                        }
                        Else
                        {
                            SM3E = Zero
                        }

                        If (Local0 & 0x02)
                        {
                            SM6E = One
                        }
                        Else
                        {
                            SM6E = Zero
                        }

                        If (Local0 & 0x04)
                        {
                            SMAE = One
                        }
                        Else
                        {
                            SMAE = Zero
                        }

                        If (Local1 & One)
                        {
                            SS3E = One
                        }
                        Else
                        {
                            SS3E = Zero
                        }

                        If (Local1 & 0x02)
                        {
                            SS6E = One
                        }
                        Else
                        {
                            SS6E = Zero
                        }

                        If (Local1 & 0x04)
                        {
                            SSAE = One
                        }
                        Else
                        {
                            SSAE = Zero
                        }

                        ATA2 = GTF (Zero, Arg1)
                        ATA3 = GTF (One, Arg2)
                    }

                    Device (DRV0)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                        {
                            Return (RATA (ATA2))
                        }
                    }

                    Device (DRV1)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                        {
                            Return (RATA (ATA3))
                        }
                    }
                }

                Method (GTM, 7, Serialized)
                {
                    PIO0 = Ones
                    PIO1 = Ones
                    DMA0 = Ones
                    DMA1 = Ones
                    CHNF = 0x10
                    If (REGF) {}
                    Else
                    {
                        Return (TMD0)
                    }

                    If (Arg1 & 0x20)
                    {
                        CHNF |= 0x02
                    }

                    Local6 = Match (DerefOf (TIM0 [One]), MEQ, Arg0, MTR, Zero, Zero)
                    Local7 = DerefOf (DerefOf (TIM0 [Zero]) [Local6])
                    DMA0 = Local7
                    PIO0 = Local7
                    If (Arg4 & 0x20)
                    {
                        CHNF |= 0x08
                    }

                    Local6 = Match (DerefOf (TIM0 [0x02]), MEQ, Arg3, MTR, Zero, Zero)
                    Local7 = DerefOf (DerefOf (TIM0 [Zero]) [Local6])
                    DMA1 = Local7
                    PIO1 = Local7
                    If (Arg1 & 0x07)
                    {
                        Local5 = Arg2
                        If (Arg1 & 0x02)
                        {
                            Local5 += 0x02
                        }

                        If (Arg1 & 0x04)
                        {
                            Local5 += 0x04
                        }

                        DMA0 = DerefOf (DerefOf (TIM0 [0x03]) [Local5])
                        CHNF |= One
                    }

                    If (Arg4 & 0x07)
                    {
                        Local5 = Arg5
                        If (Arg4 & 0x02)
                        {
                            Local5 += 0x02
                        }

                        If (Arg4 & 0x04)
                        {
                            Local5 += 0x04
                        }

                        DMA1 = DerefOf (DerefOf (TIM0 [0x03]) [Local5])
                        CHNF |= 0x04
                    }

                    Debug = TMD0
                    Return (TMD0)
                }

                Method (STM, 0, Serialized)
                {
                    If (REGF)
                    {
                        GMUE = Zero
                        GMUT = Zero
                        GSUE = Zero
                        GSUT = Zero
                        If (CHNF & One)
                        {
                            Local0 = Match (DerefOf (TIM0 [0x03]), MLE, DMA0, MTR, Zero, Zero)
                            If (Local0 > 0x05)
                            {
                                Local0 = 0x05
                            }

                            GMUT = DerefOf (DerefOf (TIM0 [0x04]) [Local0])
                            GMUE |= One
                            If (Local0 > 0x02)
                            {
                                GMUE |= 0x02
                            }

                            If (Local0 > 0x04)
                            {
                                GMUE &= 0xFD
                                GMUE |= 0x04
                            }
                        }
                        ElseIf ((PIO0 == Ones) | (PIO0 == Zero))
                        {
                            If ((DMA0 < Ones) & (DMA0 > Zero))
                            {
                                PIO0 = DMA0
                                GMUE |= 0x80
                            }
                        }

                        If (CHNF & 0x04)
                        {
                            Local0 = Match (DerefOf (TIM0 [0x03]), MLE, DMA1, MTR, Zero, Zero)
                            If (Local0 > 0x05)
                            {
                                Local0 = 0x05
                            }

                            GSUT = DerefOf (DerefOf (TIM0 [0x04]) [Local0])
                            GSUE |= One
                            If (Local0 > 0x02)
                            {
                                GSUE |= 0x02
                            }

                            If (Local0 > 0x04)
                            {
                                GSUE &= 0xFD
                                GSUE |= 0x04
                            }
                        }
                        ElseIf ((PIO1 == Ones) | (PIO1 == Zero))
                        {
                            If ((DMA1 < Ones) & (DMA1 > Zero))
                            {
                                PIO1 = DMA1
                                GSUE |= 0x80
                            }
                        }

                        If (CHNF & 0x02)
                        {
                            GMUE |= 0x20
                        }

                        If (CHNF & 0x08)
                        {
                            GSUE |= 0x20
                        }

                        Local0 = (Match (DerefOf (TIM0 [Zero]), MGE, PIO0, MTR, Zero, Zero) & 0x03)
                        Local1 = DerefOf (DerefOf (TIM0 [One]) [Local0])
                        GMPT = Local1
                        If (Local0 < 0x03)
                        {
                            GMUE |= 0x50
                        }

                        Local0 = (Match (DerefOf (TIM0 [Zero]), MGE, PIO1, MTR, Zero, Zero) & 0x03)
                        Local1 = DerefOf (DerefOf (TIM0 [0x02]) [Local0])
                        GSPT = Local1
                        If (Local0 < 0x03)
                        {
                            GSUE |= 0x50
                        }
                    }
                }

                Name (AT01, Buffer (0x07)
                {
                     0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0xEF       
                })
                Name (AT02, Buffer (0x07)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x90       
                })
                Name (AT03, Buffer (0x07)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC6       
                })
                Name (AT04, Buffer (0x07)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x91       
                })
                Name (ATA0, Buffer (0x1D) {})
                Name (ATA1, Buffer (0x1D) {})
                Name (ATA2, Buffer (0x1D) {})
                Name (ATA3, Buffer (0x1D) {})
                Name (ATAB, Buffer (0x1D) {})
                CreateByteField (ATAB, Zero, CMDC)
                Method (GTFB, 3, Serialized)
                {
                    Local0 = (CMDC * 0x38)
                    Local1 = (Local0 + 0x08)
                    CreateField (ATAB, Local1, 0x38, CMDX)
                    Local0 = (CMDC * 0x07)
                    CreateByteField (ATAB, (Local0 + 0x02), A001)
                    CreateByteField (ATAB, (Local0 + 0x06), A005)
                    CMDX = Arg0
                    A001 = Arg1
                    A005 = Arg2
                    CMDC++
                }

                Method (GTF, 2, Serialized)
                {
                    Debug = Arg1
                    CMDC = Zero
                    Name (ID49, 0x0C00)
                    Name (ID59, Zero)
                    Name (ID53, 0x04)
                    Name (ID63, 0x0F00)
                    Name (ID88, 0x0F00)
                    Name (IRDY, One)
                    Name (PIOT, Zero)
                    Name (DMAT, Zero)
                    If (SizeOf (Arg1) == 0x0200)
                    {
                        CreateWordField (Arg1, 0x62, IW49)
                        ID49 = IW49
                        CreateWordField (Arg1, 0x6A, IW53)
                        ID53 = IW53
                        CreateWordField (Arg1, 0x7E, IW63)
                        ID63 = IW63
                        CreateWordField (Arg1, 0x76, IW59)
                        ID59 = IW59
                        CreateWordField (Arg1, 0xB0, IW88)
                        ID88 = IW88
                    }

                    Local7 = 0xA0
                    If (Arg0)
                    {
                        Local7 = 0xB0
                        IRDY = (CHNF & 0x08)
                        If (CHNF & 0x10)
                        {
                            PIOT = PIO1
                        }
                        Else
                        {
                            PIOT = PIO0
                        }

                        If (CHNF & 0x04)
                        {
                            If (CHNF & 0x10)
                            {
                                DMAT = DMA1
                            }
                            Else
                            {
                                DMAT = DMA0
                            }
                        }
                    }
                    Else
                    {
                        IRDY = (CHNF & 0x02)
                        PIOT = PIO0
                        If (CHNF & One)
                        {
                            DMAT = DMA0
                        }
                    }

                    If (((ID53 & 0x04) && (ID88 & 0xFF00)) && DMAT)
                    {
                        Local1 = Match (DerefOf (TIM0 [0x03]), MLE, DMAT, MTR, Zero, Zero)
                        If (Local1 > 0x05)
                        {
                            Local1 = 0x05
                        }

                        GTFB (AT01, (0x40 | Local1), Local7)
                    }
                    ElseIf ((ID63 & 0xFF00) && PIOT)
                    {
                        Local0 = (Match (DerefOf (TIM0 [Zero]), MGE, PIOT, MTR, Zero, Zero) & 0x03)
                        Local1 = (0x20 | DerefOf (DerefOf (TIM0 [0x07]) [Local0]))
                        GTFB (AT01, Local1, Local7)
                    }

                    If (IRDY)
                    {
                        Local0 = (Match (DerefOf (TIM0 [Zero]), MGE, PIOT, MTR, Zero, Zero) & 0x03)
                        Local1 = (0x08 | DerefOf (DerefOf (TIM0 [0x06]) [Local0]))
                        GTFB (AT01, Local1, Local7)
                    }
                    ElseIf (ID49 & 0x0400)
                    {
                        GTFB (AT01, One, Local7)
                    }

                    If ((ID59 & 0x0100) && (ID59 & 0xFF))
                    {
                        GTFB (AT03, (ID59 & 0xFF), Local7)
                    }

                    Debug = ATAB
                    Return (ATAB)
                }

                Method (RATA, 1, NotSerialized)
                {
                    CreateByteField (Arg0, Zero, CMDN)
                    Local0 = (CMDN * 0x38)
                    CreateField (Arg0, 0x08, Local0, RETB)
                    Debug = RETB
                    Return (Concatenate (RETB, FZTF))
                }
            }

            Device (SAT1)
            {
                Name (_ADR, 0x001F0005)  // _ADR: Address
                Name (REGF, One)
                Method (_REG, 2, NotSerialized)  // _REG: Region Availability
                {
                    If (Arg0 == 0x02)
                    {
                        REGF = Arg1
                    }
                }

                Name (TIM0, Package (0x08)
                {
                    Package (0x04)
                    {
                        0x78, 
                        0xB4, 
                        0xF0, 
                        0x0384
                    }, 

                    Package (0x04)
                    {
                        0x23, 
                        0x21, 
                        0x10, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0x0B, 
                        0x09, 
                        0x04, 
                        Zero
                    }, 

                    Package (0x06)
                    {
                        0x78, 
                        0x5A, 
                        0x3C, 
                        0x28, 
                        0x1E, 
                        0x14
                    }, 

                    Package (0x06)
                    {
                        Zero, 
                        One, 
                        0x02, 
                        One, 
                        0x02, 
                        One
                    }, 

                    Package (0x06)
                    {
                        Zero, 
                        Zero, 
                        Zero, 
                        One, 
                        One, 
                        One
                    }, 

                    Package (0x04)
                    {
                        0x04, 
                        0x03, 
                        0x02, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0x02, 
                        One, 
                        Zero, 
                        Zero
                    }
                })
                Name (TMD0, Buffer (0x14) {})
                CreateDWordField (TMD0, Zero, PIO0)
                CreateDWordField (TMD0, 0x04, DMA0)
                CreateDWordField (TMD0, 0x08, PIO1)
                CreateDWordField (TMD0, 0x0C, DMA1)
                CreateDWordField (TMD0, 0x10, CHNF)
                OperationRegion (CFG2, PCI_Config, 0x40, 0x20)
                Field (CFG2, DWordAcc, NoLock, Preserve)
                {
                    PMPT,   4, 
                    PSPT,   4, 
                    PMRI,   6, 
                    Offset (0x02), 
                    SMPT,   4, 
                    SSPT,   4, 
                    SMRI,   6, 
                    Offset (0x04), 
                    PSRI,   4, 
                    SSRI,   4, 
                    Offset (0x08), 
                    PM3E,   1, 
                    PS3E,   1, 
                    SM3E,   1, 
                    SS3E,   1, 
                    Offset (0x0A), 
                    PMUT,   2, 
                        ,   2, 
                    PSUT,   2, 
                    Offset (0x0B), 
                    SMUT,   2, 
                        ,   2, 
                    SSUT,   2, 
                    Offset (0x0C), 
                    Offset (0x14), 
                    PM6E,   1, 
                    PS6E,   1, 
                    SM6E,   1, 
                    SS6E,   1, 
                    PMCR,   1, 
                    PSCR,   1, 
                    SMCR,   1, 
                    SSCR,   1, 
                        ,   4, 
                    PMAE,   1, 
                    PSAE,   1, 
                    SMAE,   1, 
                    SSAE,   1
                }

                Name (GMPT, Zero)
                Name (GMUE, Zero)
                Name (GMUT, Zero)
                Name (GMCR, Zero)
                Name (GSPT, Zero)
                Name (GSUE, Zero)
                Name (GSUT, Zero)
                Name (GSCR, Zero)
                Device (PRT0)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Method (_GTM, 0, NotSerialized)  // _GTM: Get Timing Mode
                    {
                        Local1 = (PSCR << One)
                        Local0 = (PMCR | Local1)
                        Local3 = (PMAE << 0x02)
                        Local4 = (PM6E << One)
                        Local3 |= Local4
                        Local1 = (PM3E | Local3)
                        Local3 = (PMPT << 0x04)
                        Local1 |= Local3
                        Local3 = (PSAE << 0x02)
                        Local4 = (PS6E << One)
                        Local3 |= Local4
                        Local2 = (PS3E | Local3)
                        Local3 = (PSPT << 0x04)
                        Local2 |= Local3
                        Return (GTM (PMRI, Local1, PMUT, PSRI, Local2, PSUT, Local0))
                    }

                    Method (_STM, 3, NotSerialized)  // _STM: Set Timing Mode
                    {
                        Debug = Arg0
                        TMD0 = Arg0
                        Local3 = (PMAE << 0x02)
                        Local4 = (PM6E << One)
                        Local3 |= Local4
                        Local0 = (PM3E | Local3)
                        Local3 = (PMPT << 0x04)
                        Local0 |= Local3
                        Local3 = (PSAE << 0x02)
                        Local4 = (PS6E << One)
                        Local3 |= Local4
                        Local1 = (PS3E | Local3)
                        Local3 = (PSPT << 0x04)
                        Local1 |= Local3
                        GMPT = PMRI
                        GMUE = Local0
                        GMUT = PMUT
                        GMCR = PMCR
                        GSPT = PSRI
                        GSUE = Local1
                        GSUT = PSUT
                        GSCR = PSCR
                        STM ()
                        PMRI = GMPT
                        Local0 = GMUE
                        PMUT = GMUT
                        PMCR = GMCR
                        Local1 = GSUE
                        PSUT = GSUT
                        PSCR = GSCR
                        If (Local0 & One)
                        {
                            PM3E = One
                        }
                        Else
                        {
                            PM3E = Zero
                        }

                        If (Local0 & 0x02)
                        {
                            PM6E = One
                        }
                        Else
                        {
                            PM6E = Zero
                        }

                        If (Local0 & 0x04)
                        {
                            PMAE = One
                        }
                        Else
                        {
                            PMAE = Zero
                        }

                        If (Local1 & One)
                        {
                            PS3E = One
                        }
                        Else
                        {
                            PS3E = Zero
                        }

                        If (Local1 & 0x02)
                        {
                            PS6E = One
                        }
                        Else
                        {
                            PS6E = Zero
                        }

                        If (Local1 & 0x04)
                        {
                            PSAE = One
                        }
                        Else
                        {
                            PSAE = Zero
                        }

                        ATA0 = GTF (Zero, Arg1)
                        ATA1 = GTF (One, Arg2)
                    }

                    Device (DRV0)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                        {
                            Return (RATA (ATA0))
                        }
                    }

                    Device (DRV1)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                        {
                            Return (RATA (ATA1))
                        }
                    }
                }

                Device (PRT1)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Method (_GTM, 0, NotSerialized)  // _GTM: Get Timing Mode
                    {
                        Local1 = (SSCR << One)
                        Local0 = (SMCR | Local1)
                        Local3 = (SMAE << 0x02)
                        Local4 = (SM6E << One)
                        Local3 |= Local4
                        Local1 = (SM3E | Local3)
                        Local3 = (SMPT << 0x04)
                        Local1 |= Local3
                        Local3 = (SSAE << 0x02)
                        Local4 = (SS6E << One)
                        Local3 |= Local4
                        Local2 = (SS3E | Local3)
                        Local3 = (SSPT << 0x04)
                        Local2 |= Local3
                        Return (GTM (SMRI, Local1, SMUT, SSRI, Local2, SSUT, Local0))
                    }

                    Method (_STM, 3, NotSerialized)  // _STM: Set Timing Mode
                    {
                        Debug = Arg0
                        TMD0 = Arg0
                        Local3 = (SMAE << 0x02)
                        Local4 = (SM6E << One)
                        Local3 |= Local4
                        Local0 = (SM3E | Local3)
                        Local3 = (SMPT << 0x04)
                        Local0 |= Local3
                        Local3 = (SSAE << 0x02)
                        Local4 = (SS6E << One)
                        Local3 |= Local4
                        Local1 = (SS3E | Local3)
                        Local3 = (SSPT << 0x04)
                        Local1 |= Local3
                        GMPT = SMRI
                        GMUE = Local0
                        GMUT = SMUT
                        GMCR = SMCR
                        GSPT = SSRI
                        GSUE = Local1
                        GSUT = SSUT
                        GSCR = SSCR
                        STM ()
                        SMRI = GMPT
                        Local0 = GMUE
                        SMUT = GMUT
                        SMCR = GMCR
                        Local1 = GSUE
                        SSUT = GSUT
                        SSCR = GSCR
                        If (Local0 & One)
                        {
                            SM3E = One
                        }
                        Else
                        {
                            SM3E = Zero
                        }

                        If (Local0 & 0x02)
                        {
                            SM6E = One
                        }
                        Else
                        {
                            SM6E = Zero
                        }

                        If (Local0 & 0x04)
                        {
                            SMAE = One
                        }
                        Else
                        {
                            SMAE = Zero
                        }

                        If (Local1 & One)
                        {
                            SS3E = One
                        }
                        Else
                        {
                            SS3E = Zero
                        }

                        If (Local1 & 0x02)
                        {
                            SS6E = One
                        }
                        Else
                        {
                            SS6E = Zero
                        }

                        If (Local1 & 0x04)
                        {
                            SSAE = One
                        }
                        Else
                        {
                            SSAE = Zero
                        }

                        ATA2 = GTF (Zero, Arg1)
                        ATA3 = GTF (One, Arg2)
                    }

                    Device (DRV0)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                        {
                            Return (RATA (ATA2))
                        }
                    }

                    Device (DRV1)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                        {
                            Return (RATA (ATA3))
                        }
                    }
                }

                Method (GTM, 7, Serialized)
                {
                    PIO0 = Ones
                    PIO1 = Ones
                    DMA0 = Ones
                    DMA1 = Ones
                    CHNF = 0x10
                    If (REGF) {}
                    Else
                    {
                        Return (TMD0)
                    }

                    If (Arg1 & 0x20)
                    {
                        CHNF |= 0x02
                    }

                    Local6 = Match (DerefOf (TIM0 [One]), MEQ, Arg0, MTR, Zero, Zero)
                    Local7 = DerefOf (DerefOf (TIM0 [Zero]) [Local6])
                    DMA0 = Local7
                    PIO0 = Local7
                    If (Arg4 & 0x20)
                    {
                        CHNF |= 0x08
                    }

                    Local6 = Match (DerefOf (TIM0 [0x02]), MEQ, Arg3, MTR, Zero, Zero)
                    Local7 = DerefOf (DerefOf (TIM0 [Zero]) [Local6])
                    DMA1 = Local7
                    PIO1 = Local7
                    If (Arg1 & 0x07)
                    {
                        Local5 = Arg2
                        If (Arg1 & 0x02)
                        {
                            Local5 += 0x02
                        }

                        If (Arg1 & 0x04)
                        {
                            Local5 += 0x04
                        }

                        DMA0 = DerefOf (DerefOf (TIM0 [0x03]) [Local5])
                        CHNF |= One
                    }

                    If (Arg4 & 0x07)
                    {
                        Local5 = Arg5
                        If (Arg4 & 0x02)
                        {
                            Local5 += 0x02
                        }

                        If (Arg4 & 0x04)
                        {
                            Local5 += 0x04
                        }

                        DMA1 = DerefOf (DerefOf (TIM0 [0x03]) [Local5])
                        CHNF |= 0x04
                    }

                    Debug = TMD0
                    Return (TMD0)
                }

                Method (STM, 0, Serialized)
                {
                    If (REGF)
                    {
                        GMUE = Zero
                        GMUT = Zero
                        GSUE = Zero
                        GSUT = Zero
                        If (CHNF & One)
                        {
                            Local0 = Match (DerefOf (TIM0 [0x03]), MLE, DMA0, MTR, Zero, Zero)
                            If (Local0 > 0x05)
                            {
                                Local0 = 0x05
                            }

                            GMUT = DerefOf (DerefOf (TIM0 [0x04]) [Local0])
                            GMUE |= One
                            If (Local0 > 0x02)
                            {
                                GMUE |= 0x02
                            }

                            If (Local0 > 0x04)
                            {
                                GMUE &= 0xFD
                                GMUE |= 0x04
                            }
                        }
                        ElseIf ((PIO0 == Ones) | (PIO0 == Zero))
                        {
                            If ((DMA0 < Ones) & (DMA0 > Zero))
                            {
                                PIO0 = DMA0
                                GMUE |= 0x80
                            }
                        }

                        If (CHNF & 0x04)
                        {
                            Local0 = Match (DerefOf (TIM0 [0x03]), MLE, DMA1, MTR, Zero, Zero)
                            If (Local0 > 0x05)
                            {
                                Local0 = 0x05
                            }

                            GSUT = DerefOf (DerefOf (TIM0 [0x04]) [Local0])
                            GSUE |= One
                            If (Local0 > 0x02)
                            {
                                GSUE |= 0x02
                            }

                            If (Local0 > 0x04)
                            {
                                GSUE &= 0xFD
                                GSUE |= 0x04
                            }
                        }
                        ElseIf ((PIO1 == Ones) | (PIO1 == Zero))
                        {
                            If ((DMA1 < Ones) & (DMA1 > Zero))
                            {
                                PIO1 = DMA1
                                GSUE |= 0x80
                            }
                        }

                        If (CHNF & 0x02)
                        {
                            GMUE |= 0x20
                        }

                        If (CHNF & 0x08)
                        {
                            GSUE |= 0x20
                        }

                        Local0 = (Match (DerefOf (TIM0 [Zero]), MGE, PIO0, MTR, Zero, Zero) & 0x03)
                        Local1 = DerefOf (DerefOf (TIM0 [One]) [Local0])
                        GMPT = Local1
                        If (Local0 < 0x03)
                        {
                            GMUE |= 0x50
                        }

                        Local0 = (Match (DerefOf (TIM0 [Zero]), MGE, PIO1, MTR, Zero, Zero) & 0x03)
                        Local1 = DerefOf (DerefOf (TIM0 [0x02]) [Local0])
                        GSPT = Local1
                        If (Local0 < 0x03)
                        {
                            GSUE |= 0x50
                        }
                    }
                }

                Name (AT01, Buffer (0x07)
                {
                     0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0xEF       
                })
                Name (AT02, Buffer (0x07)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x90       
                })
                Name (AT03, Buffer (0x07)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC6       
                })
                Name (AT04, Buffer (0x07)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x91       
                })
                Name (ATA0, Buffer (0x1D) {})
                Name (ATA1, Buffer (0x1D) {})
                Name (ATA2, Buffer (0x1D) {})
                Name (ATA3, Buffer (0x1D) {})
                Name (ATAB, Buffer (0x1D) {})
                CreateByteField (ATAB, Zero, CMDC)
                Method (GTFB, 3, Serialized)
                {
                    Local0 = (CMDC * 0x38)
                    Local1 = (Local0 + 0x08)
                    CreateField (ATAB, Local1, 0x38, CMDX)
                    Local0 = (CMDC * 0x07)
                    CreateByteField (ATAB, (Local0 + 0x02), A001)
                    CreateByteField (ATAB, (Local0 + 0x06), A005)
                    CMDX = Arg0
                    A001 = Arg1
                    A005 = Arg2
                    CMDC++
                }

                Method (GTF, 2, Serialized)
                {
                    Debug = Arg1
                    CMDC = Zero
                    Name (ID49, 0x0C00)
                    Name (ID59, Zero)
                    Name (ID53, 0x04)
                    Name (ID63, 0x0F00)
                    Name (ID88, 0x0F00)
                    Name (IRDY, One)
                    Name (PIOT, Zero)
                    Name (DMAT, Zero)
                    If (SizeOf (Arg1) == 0x0200)
                    {
                        CreateWordField (Arg1, 0x62, IW49)
                        ID49 = IW49
                        CreateWordField (Arg1, 0x6A, IW53)
                        ID53 = IW53
                        CreateWordField (Arg1, 0x7E, IW63)
                        ID63 = IW63
                        CreateWordField (Arg1, 0x76, IW59)
                        ID59 = IW59
                        CreateWordField (Arg1, 0xB0, IW88)
                        ID88 = IW88
                    }

                    Local7 = 0xA0
                    If (Arg0)
                    {
                        Local7 = 0xB0
                        IRDY = (CHNF & 0x08)
                        If (CHNF & 0x10)
                        {
                            PIOT = PIO1
                        }
                        Else
                        {
                            PIOT = PIO0
                        }

                        If (CHNF & 0x04)
                        {
                            If (CHNF & 0x10)
                            {
                                DMAT = DMA1
                            }
                            Else
                            {
                                DMAT = DMA0
                            }
                        }
                    }
                    Else
                    {
                        IRDY = (CHNF & 0x02)
                        PIOT = PIO0
                        If (CHNF & One)
                        {
                            DMAT = DMA0
                        }
                    }

                    If (((ID53 & 0x04) && (ID88 & 0xFF00)) && DMAT)
                    {
                        Local1 = Match (DerefOf (TIM0 [0x03]), MLE, DMAT, MTR, Zero, Zero)
                        If (Local1 > 0x05)
                        {
                            Local1 = 0x05
                        }

                        GTFB (AT01, (0x40 | Local1), Local7)
                    }
                    ElseIf ((ID63 & 0xFF00) && PIOT)
                    {
                        Local0 = (Match (DerefOf (TIM0 [Zero]), MGE, PIOT, MTR, Zero, Zero) & 0x03)
                        Local1 = (0x20 | DerefOf (DerefOf (TIM0 [0x07]) [Local0]))
                        GTFB (AT01, Local1, Local7)
                    }

                    If (IRDY)
                    {
                        Local0 = (Match (DerefOf (TIM0 [Zero]), MGE, PIOT, MTR, Zero, Zero) & 0x03)
                        Local1 = (0x08 | DerefOf (DerefOf (TIM0 [0x06]) [Local0]))
                        GTFB (AT01, Local1, Local7)
                    }
                    ElseIf (ID49 & 0x0400)
                    {
                        GTFB (AT01, One, Local7)
                    }

                    If ((ID59 & 0x0100) && (ID59 & 0xFF))
                    {
                        GTFB (AT03, (ID59 & 0xFF), Local7)
                    }

                    Debug = ATAB
                    Return (ATAB)
                }

                Method (RATA, 1, NotSerialized)
                {
                    CreateByteField (Arg0, Zero, CMDN)
                    Local0 = (CMDN * 0x38)
                    CreateField (Arg0, 0x08, Local0, RETB)
                    Debug = RETB
                    Return (Concatenate (RETB, FZTF))
                }
            }

            Device (SMB)
            {
                Name (_ADR, 0x001F0003)  // _ADR: Address
                OperationRegion (SMIO, SystemIO, SMBS, SMBL)
                Field (SMIO, ByteAcc, NoLock, Preserve)
                {
                    HSTS,   8, 
                    HCNT,   8, 
                    HCMD,   8, 
                    TSAD,   8, 
                    HDT0,   8, 
                    HDT1,   8, 
                    HBDT,   8, 
                    RSAD,   8, 
                    RSDA,   16, 
                    AUST,   8, 
                    AUCT,   8, 
                    SMLP,   8, 
                    SMBP,   8, 
                    SSTS,   8, 
                    SCMD,   8, 
                    NDAD,   8, 
                    NDLB,   8, 
                    NDHB,   8
                }

                Method (SMCS, 0, NotSerialized)
                {
                    HSTS = 0x20
                }

                Scope (\_GPE)
                {
                    Method (_L07, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
                    {
                        \_SB.PCI0.SMB.HSTS = 0x20
                    }

                    Method (_L1B, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
                    {
                        \_SB.PCI0.SMB.HSTS = 0x20
                    }
                }
            }

            Device (PEX0)
            {
                Name (_ADR, 0x001C0000)  // _ADR: Address
                OperationRegion (PXRC, PCI_Config, Zero, 0x0100)
                Field (PXRC, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x60), 
                    Offset (0x62), 
                    PMS,    1, 
                    PMP,    1, 
                    Offset (0xD8), 
                        ,   30, 
                    HPE,    1, 
                    PCE,    1, 
                        ,   30, 
                    HPS,    1, 
                    PCS,    1
                }

                Method (CSS, 0, NotSerialized)
                {
                    PMS = One
                    PCS = One
                    PMS = One
                }

                Method (SPRT, 1, NotSerialized)
                {
                    CSS ()
                    PCE = One
                    CSS ()
                }

                Method (WPRT, 1, NotSerialized)
                {
                    PCE = Zero
                    CSS ()
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR01)
                    }

                    Return (PR01)
                }
            }

            Device (P0PA)
            {
                Name (_ADR, 0x00110000)  // _ADR: Address
            }

            Device (NPE1)
            {
                Name (_ADR, 0x00010000)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x03))
                }
            }

            Device (NPE4)
            {
                Name (_ADR, 0x00020001)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x03))
                }
            }

            Device (NPE5)
            {
                Name (_ADR, 0x00020002)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x03))
                }
            }

            Device (NPE6)
            {
                Name (_ADR, 0x00020003)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x03))
                }
            }

            Device (NPE8)
            {
                Name (_ADR, 0x00030001)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x03))
                }
            }

            Device (NPE9)
            {
                Name (_ADR, 0x00030002)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x03))
                }
            }

            Device (NPEA)
            {
                Name (_ADR, 0x00030003)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x03))
                }
            }

            Device (GBE)
            {
                Name (_ADR, 0x00190000)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x0D, 0x04))
                }
            }

            Device (PEX1)
            {
                Name (_ADR, 0x001C0001)  // _ADR: Address
                OperationRegion (PXRC, PCI_Config, Zero, 0x0100)
                Field (PXRC, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x60), 
                    Offset (0x62), 
                    PMS,    1, 
                    PMP,    1, 
                    Offset (0xD8), 
                        ,   30, 
                    HPE,    1, 
                    PCE,    1, 
                        ,   30, 
                    HPS,    1, 
                    PCS,    1
                }

                Method (CSS, 0, NotSerialized)
                {
                    PMS = One
                    PCS = One
                    PMS = One
                }

                Method (SPRT, 1, NotSerialized)
                {
                    CSS ()
                    PCE = One
                    CSS ()
                }

                Method (WPRT, 1, NotSerialized)
                {
                    PCE = Zero
                    CSS ()
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, One))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR02)
                    }

                    Return (PR02)
                }
            }

            Device (PEX4)
            {
                Name (_ADR, 0x001C0004)  // _ADR: Address
                OperationRegion (PXRC, PCI_Config, Zero, 0x0100)
                Field (PXRC, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x60), 
                    Offset (0x62), 
                    PMS,    1, 
                    PMP,    1, 
                    Offset (0xD8), 
                        ,   30, 
                    HPE,    1, 
                    PCE,    1, 
                        ,   30, 
                    HPS,    1, 
                    PCS,    1
                }

                Method (CSS, 0, NotSerialized)
                {
                    PMS = One
                    PCS = One
                    PMS = One
                }

                Method (SPRT, 1, NotSerialized)
                {
                    CSS ()
                    PCE = One
                    CSS ()
                }

                Method (WPRT, 1, NotSerialized)
                {
                    PCE = Zero
                    CSS ()
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR05)
                    }

                    Return (PR05)
                }
            }

            Device (PEX2)
            {
                Name (_ADR, 0x001C0002)  // _ADR: Address
                OperationRegion (PXRC, PCI_Config, Zero, 0x0100)
                Field (PXRC, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x60), 
                    Offset (0x62), 
                    PMS,    1, 
                    PMP,    1, 
                    Offset (0xD8), 
                        ,   30, 
                    HPE,    1, 
                    PCE,    1, 
                        ,   30, 
                    HPS,    1, 
                    PCS,    1
                }

                Method (CSS, 0, NotSerialized)
                {
                    PMS = One
                    PCS = One
                    PMS = One
                }

                Method (SPRT, 1, NotSerialized)
                {
                    CSS ()
                    PCE = One
                    CSS ()
                }

                Method (WPRT, 1, NotSerialized)
                {
                    PCE = Zero
                    CSS ()
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR03)
                    }

                    Return (PR03)
                }
            }

            Device (PEX3)
            {
                Name (_ADR, 0x001C0003)  // _ADR: Address
                OperationRegion (PXRC, PCI_Config, Zero, 0x0100)
                Field (PXRC, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x60), 
                    Offset (0x62), 
                    PMS,    1, 
                    PMP,    1, 
                    Offset (0xD8), 
                        ,   30, 
                    HPE,    1, 
                    PCE,    1, 
                        ,   30, 
                    HPS,    1, 
                    PCS,    1
                }

                Method (CSS, 0, NotSerialized)
                {
                    PMS = One
                    PCS = One
                    PMS = One
                }

                Method (SPRT, 1, NotSerialized)
                {
                    CSS ()
                    PCE = One
                    CSS ()
                }

                Method (WPRT, 1, NotSerialized)
                {
                    PCE = Zero
                    CSS ()
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR04)
                    }

                    Return (PR04)
                }
            }

            Device (PEX5)
            {
                Name (_ADR, 0x001C0005)  // _ADR: Address
                OperationRegion (PXRC, PCI_Config, Zero, 0x0100)
                Field (PXRC, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x60), 
                    Offset (0x62), 
                    PMS,    1, 
                    PMP,    1, 
                    Offset (0xD8), 
                        ,   30, 
                    HPE,    1, 
                    PCE,    1, 
                        ,   30, 
                    HPS,    1, 
                    PCS,    1
                }

                Method (CSS, 0, NotSerialized)
                {
                    PMS = One
                    PCS = One
                    PMS = One
                }

                Method (SPRT, 1, NotSerialized)
                {
                    CSS ()
                    PCE = One
                    CSS ()
                }

                Method (WPRT, 1, NotSerialized)
                {
                    PCE = Zero
                    CSS ()
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR06)
                    }

                    Return (PR06)
                }
            }

            Device (PEX6)
            {
                Name (_ADR, 0x001C0006)  // _ADR: Address
                OperationRegion (PXRC, PCI_Config, Zero, 0x0100)
                Field (PXRC, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x60), 
                    Offset (0x62), 
                    PMS,    1, 
                    PMP,    1, 
                    Offset (0xD8), 
                        ,   30, 
                    HPE,    1, 
                    PCE,    1, 
                        ,   30, 
                    HPS,    1, 
                    PCS,    1
                }

                Method (CSS, 0, NotSerialized)
                {
                    PMS = One
                    PCS = One
                    PMS = One
                }

                Method (SPRT, 1, NotSerialized)
                {
                    CSS ()
                    PCE = One
                    CSS ()
                }

                Method (WPRT, 1, NotSerialized)
                {
                    PCE = Zero
                    CSS ()
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR07)
                    }

                    Return (PR07)
                }
            }

            Device (PEX7)
            {
                Name (_ADR, 0x001C0007)  // _ADR: Address
                OperationRegion (PXRC, PCI_Config, Zero, 0x0100)
                Field (PXRC, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x60), 
                    Offset (0x62), 
                    PMS,    1, 
                    PMP,    1, 
                    Offset (0xD8), 
                        ,   30, 
                    HPE,    1, 
                    PCE,    1, 
                        ,   30, 
                    HPS,    1, 
                    PCS,    1
                }

                Method (CSS, 0, NotSerialized)
                {
                    PMS = One
                    PCS = One
                    PMS = One
                }

                Method (SPRT, 1, NotSerialized)
                {
                    CSS ()
                    PCE = One
                    CSS ()
                }

                Method (WPRT, 1, NotSerialized)
                {
                    PCE = Zero
                    CSS ()
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR08)
                    }

                    Return (PR08)
                }
            }

            Device (NPE2)
            {
                Name (_ADR, 0x00010001)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR12)
                    }

                    Return (PR12)
                }
            }

            Device (NPE3)
            {
                Name (_ADR, 0x00020000)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR13)
                    }

                    Return (PR13)
                }
            }

            Device (NPE7)
            {
                Name (_ADR, 0x00030000)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR17)
                    }

                    Return (PR17)
                }
            }

            Device (EH01)
            {
                Name (_ADR, 0x001D0000)  // _ADR: Address
                Name (_S4D, 0x02)  // _S4D: S4 Device State
                Name (_S3D, 0x02)  // _S3D: S3 Device State
                Name (_S2D, 0x02)  // _S2D: S2 Device State
                Name (_S1D, 0x02)  // _S1D: S1 Device State
                Device (PRT1)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                    {
                        0xFF, 
                        0xFF, 
                        Zero, 
                        Zero
                    })
                    Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                    {
                        Buffer (0x10)
                        {
                            /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                            /* 0008 */  0xE1, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                        }
                    })
                }

                Device (PRT2)
                {
                    Name (_ADR, 0x02)  // _ADR: Address
                    Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                    {
                        0xFF, 
                        0xFF, 
                        Zero, 
                        Zero
                    })
                    Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                    {
                        Buffer (0x10)
                        {
                            /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                            /* 0008 */  0xE1, 0x1D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                        }
                    })
                }

                Device (PRT3)
                {
                    Name (_ADR, 0x03)  // _ADR: Address
                    Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                    {
                        0xFF, 
                        0xFF, 
                        Zero, 
                        Zero
                    })
                    Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                    {
                        Buffer (0x10)
                        {
                            /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                            /* 0008 */  0xE1, 0x1D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                        }
                    })
                }

                Device (PRT4)
                {
                    Name (_ADR, 0x04)  // _ADR: Address
                    Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                    {
                        0xFF, 
                        0xFF, 
                        Zero, 
                        Zero
                    })
                    Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                    {
                        Buffer (0x10)
                        {
                            /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                            /* 0008 */  0xE1, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                        }
                    })
                }

                Device (PRT5)
                {
                    Name (_ADR, 0x05)  // _ADR: Address
                    Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                    {
                        0xFF, 
                        0xFF, 
                        Zero, 
                        Zero
                    })
                    Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                    {
                        Buffer (0x10)
                        {
                            /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                            /* 0008 */  0xB1, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                        }
                    })
                }

                Device (PRT6)
                {
                    Name (_ADR, 0x06)  // _ADR: Address
                    Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                    {
                        0xFF, 
                        0xFF, 
                        Zero, 
                        Zero
                    })
                    Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                    {
                        Buffer (0x10)
                        {
                            /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                            /* 0008 */  0xB1, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                        }
                    })
                }

                Device (PRT7)
                {
                    Name (_ADR, 0x07)  // _ADR: Address
                    Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                    {
                        0xFF, 
                        0xFF, 
                        Zero, 
                        Zero
                    })
                    Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                    {
                        Buffer (0x10)
                        {
                            /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                            /* 0008 */  0xB1, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                        }
                    })
                }

                Device (PRT8)
                {
                    Name (_ADR, 0x08)  // _ADR: Address
                    Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                    {
                        0xFF, 
                        0xFF, 
                        Zero, 
                        Zero
                    })
                    Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                    {
                        Buffer (0x10)
                        {
                            /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                            /* 0008 */  0xB1, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                        }
                    })
                }
            }

            Device (EH02)
            {
                Name (_ADR, 0x001A0000)  // _ADR: Address
                Name (_S4D, 0x02)  // _S4D: S4 Device State
                Name (_S3D, 0x02)  // _S3D: S3 Device State
                Name (_S2D, 0x02)  // _S2D: S2 Device State
                Name (_S1D, 0x02)  // _S1D: S1 Device State
                Device (PRT1)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                    {
                        0xFF, 
                        0xFF, 
                        Zero, 
                        Zero
                    })
                    Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                    {
                        Buffer (0x10)
                        {
                            /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                            /* 0008 */  0xE1, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                        }
                    })
                }

                Device (PRT2)
                {
                    Name (_ADR, 0x02)  // _ADR: Address
                    Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                    {
                        0xFF, 
                        0xFF, 
                        Zero, 
                        Zero
                    })
                    Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                    {
                        Buffer (0x10)
                        {
                            /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                            /* 0008 */  0xE1, 0x1D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                        }
                    })
                }

                Device (PRT3)
                {
                    Name (_ADR, 0x03)  // _ADR: Address
                    Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                    {
                        0xFF, 
                        0xFF, 
                        Zero, 
                        Zero
                    })
                    Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                    {
                        Buffer (0x10)
                        {
                            /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                            /* 0008 */  0xE1, 0x1D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                        }
                    })
                }

                Device (PRT4)
                {
                    Name (_ADR, 0x04)  // _ADR: Address
                    Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                    {
                        0xFF, 
                        0xFF, 
                        Zero, 
                        Zero
                    })
                    Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                    {
                        Buffer (0x10)
                        {
                            /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                            /* 0008 */  0xE1, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                        }
                    })
                }

                Device (PRT5)
                {
                    Name (_ADR, 0x05)  // _ADR: Address
                    Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                    {
                        0xFF, 
                        Zero, 
                        Zero, 
                        Zero
                    })
                    Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                    {
                        Buffer (0x10)
                        {
                            /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                            /* 0008 */  0xB1, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                        }
                    })
                }

                Device (PRT6)
                {
                    Name (_ADR, 0x06)  // _ADR: Address
                    Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                    {
                        0xFF, 
                        0xFF, 
                        Zero, 
                        Zero
                    })
                    Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                    {
                        Buffer (0x10)
                        {
                            /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                            /* 0008 */  0xE1, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                        }
                    })
                }
            }

            Device (HDEF)
            {
                Name (_ADR, 0x001B0000)  // _ADR: Address
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If (Arg2 == Zero)
                    {
                        Return (Buffer (One)
                        {
                             0x03                                           
                        })
                    }

                    Return (Package (0x0C)
                    {
                        "AAPL,slot-name", 
                        Buffer (0x09)
                        {
                            "Built in"
                        }, 

                        "layout-id", 
                        Buffer (0x04)
                        {
                             0x0B, 0x00, 0x00, 0x00                         
                        }, 

                        "device_type", 
                        Buffer (0x11)
                        {
                            "Audio Controller"
                        }, 

                        "built-in", 
                        Buffer (One)
                        {
                             0x00                                           
                        }, 

                        "PinConfigurations", 
                        Buffer (Zero) {}, 
                        "hda-gfx", 
                        Buffer (0x0A)
                        {
                            "onboard-1"
                        }
                    })
                }
            }
        }

        Device (PCI1)
        {
            Name (_HID, EisaId ("PNP0A08"))  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0A03"))  // _CID: Compatible ID
            Name (_ADR, Zero)  // _ADR: Address
            Method (^BN80, 0, NotSerialized)
            {
                Return (0x80)
            }

            Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
            {
                Return (BN80 ())
            }

            Name (_UID, 0x80)  // _UID: Unique ID
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR80)
                }

                Return (PR80)
            }

            Name (CPRB, Zero)
            Name (LVGA, Zero)
            Name (STAV, 0x0F)
            Name (BRB, 0x80)
            Name (BRL, 0x7F)
            Name (IOB, 0xA000)
            Name (IOL, 0x6000)
            Name (MBB, 0xE8000000)
            Name (MBL, 0x14000000)
            Name (MABL, Zero)
            Name (MABH, Zero)
            Name (MALL, Zero)
            Name (MALH, Zero)
            Name (MAML, Zero)
            Name (MAMH, Zero)
            Name (CRS1, ResourceTemplate ()
            {
                WordBusNumber (ResourceProducer, MinFixed, MaxFixed, PosDecode,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x007F,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0080,             // Length
                    ,, _Y23)
                IO (Decode16,
                    0x0CF8,             // Range Minimum
                    0x0CF8,             // Range Maximum
                    0x01,               // Alignment
                    0x08,               // Length
                    )
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x03AF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x03B0,             // Length
                    ,, , TypeStatic)
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x03E0,             // Range Minimum
                    0x0CF7,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0918,             // Length
                    ,, , TypeStatic)
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x0000,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0000,             // Length
                    ,, _Y25, TypeStatic)
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0D00,             // Range Minimum
                    0x0FFF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0300,             // Length
                    ,, _Y24, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x00000000,         // Range Minimum
                    0x00000000,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00000000,         // Length
                    ,, _Y26, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C0000,         // Range Minimum
                    0x000DFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00020000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x02000000,         // Range Minimum
                    0xFFDFFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0xFDE00000,         // Length
                    ,, _Y27, AddressRangeMemory, TypeStatic)
                QWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x0000000000000000, // Granularity
                    0x0000000000000000, // Range Minimum
                    0x0000000000000000, // Range Maximum
                    0x0000000000000000, // Translation Offset
                    0x0000000000000000, // Length
                    ,, _Y28, AddressRangeMemory, TypeStatic)
            })
            Name (CRS2, ResourceTemplate ()
            {
                WordBusNumber (ResourceProducer, MinFixed, MaxFixed, PosDecode,
                    0x0000,             // Granularity
                    0x0080,             // Range Minimum
                    0x00FF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0080,             // Length
                    ,, _Y29)
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x0000,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0000,             // Length
                    ,, _Y2B, TypeStatic)
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x0000,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0000,             // Length
                    ,, _Y2A, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x00000000,         // Range Minimum
                    0x00000000,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00000000,         // Length
                    ,, _Y2C, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x80000000,         // Range Minimum
                    0xFFFFFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x80000000,         // Length
                    ,, _Y2D, AddressRangeMemory, TypeStatic)
                QWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x0000000000000000, // Granularity
                    0x0000000000000000, // Range Minimum
                    0x0000000000000000, // Range Maximum
                    0x0000000000000000, // Translation Offset
                    0x0000000000000000, // Length
                    ,, _Y2E, AddressRangeMemory, TypeStatic)
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (STAV)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                If (CPRB)
                {
                    CreateWordField (CRS1, \_SB.PCI1._Y23._MIN, MIN0)  // _MIN: Minimum Base Address
                    CreateWordField (CRS1, \_SB.PCI1._Y23._MAX, MAX0)  // _MAX: Maximum Base Address
                    CreateWordField (CRS1, \_SB.PCI1._Y23._LEN, LEN0)  // _LEN: Length
                    MIN0 = BRB
                    LEN0 = BRL
                    Local0 = LEN0
                    MAX0 = (MIN0 + Local0--)
                    CreateWordField (CRS1, \_SB.PCI1._Y24._MIN, MIN1)  // _MIN: Minimum Base Address
                    CreateWordField (CRS1, \_SB.PCI1._Y24._MAX, MAX1)  // _MAX: Maximum Base Address
                    CreateWordField (CRS1, \_SB.PCI1._Y24._LEN, LEN1)  // _LEN: Length
                    If (IOB == 0x1000)
                    {
                        Local0 = IOL
                        MAX1 = (IOB + Local0--)
                        Local0 = (MAX1 - MIN1)
                        LEN1 = (Local0 + One)
                    }
                    Else
                    {
                        MIN1 = IOB
                        LEN1 = IOL
                        Local0 = LEN1
                        MAX1 = (MIN1 + Local0--)
                    }

                    If ((LVGA == One) || (LVGA == 0x55))
                    {
                        If (VGAF)
                        {
                            CreateWordField (CRS1, \_SB.PCI1._Y25._MIN, IMN1)  // _MIN: Minimum Base Address
                            CreateWordField (CRS1, \_SB.PCI1._Y25._MAX, IMX1)  // _MAX: Maximum Base Address
                            CreateWordField (CRS1, \_SB.PCI1._Y25._LEN, ILN1)  // _LEN: Length
                            IMN1 = 0x03B0
                            IMX1 = 0x03DF
                            ILN1 = 0x30
                            CreateDWordField (CRS1, \_SB.PCI1._Y26._MIN, VMN1)  // _MIN: Minimum Base Address
                            CreateDWordField (CRS1, \_SB.PCI1._Y26._MAX, VMX1)  // _MAX: Maximum Base Address
                            CreateDWordField (CRS1, \_SB.PCI1._Y26._LEN, VLN1)  // _LEN: Length
                            VMN1 = 0x000A0000
                            VMX1 = 0x000BFFFF
                            VLN1 = 0x00020000
                            VGAF = Zero
                        }
                    }

                    CreateDWordField (CRS1, \_SB.PCI1._Y27._MIN, MIN3)  // _MIN: Minimum Base Address
                    CreateDWordField (CRS1, \_SB.PCI1._Y27._MAX, MAX3)  // _MAX: Maximum Base Address
                    CreateDWordField (CRS1, \_SB.PCI1._Y27._LEN, LEN3)  // _LEN: Length
                    MIN3 = MBB
                    LEN3 = MBL
                    Local0 = LEN3
                    MAX3 = (MIN3 + Local0--)
                    If (MALH || MALL)
                    {
                        CreateQWordField (CRS1, \_SB.PCI1._Y28._MIN, MN8L)  // _MIN: Minimum Base Address
                        Local0 = 0xB8
                        CreateDWordField (CRS1, Local0, MN8H)
                        MN8L = MABL
                        MN8H = MABH
                        CreateQWordField (CRS1, \_SB.PCI1._Y28._MAX, MX8L)  // _MAX: Maximum Base Address
                        Local1 = 0xC0
                        CreateDWordField (CRS1, Local1, MX8H)
                        CreateQWordField (CRS1, \_SB.PCI1._Y28._LEN, LN8L)  // _LEN: Length
                        Local2 = 0xD0
                        CreateDWordField (CRS1, Local2, LN8H)
                        MN8L = MABL
                        MN8H = MABH
                        LN8L = MALL
                        LN8H = MALH
                        MX8L = MAML
                        MX8H = MAMH
                    }

                    Return (CRS1)
                }
                Else
                {
                    CreateWordField (CRS2, \_SB.PCI1._Y29._MIN, MIN2)  // _MIN: Minimum Base Address
                    CreateWordField (CRS2, \_SB.PCI1._Y29._MAX, MAX2)  // _MAX: Maximum Base Address
                    CreateWordField (CRS2, \_SB.PCI1._Y29._LEN, LEN2)  // _LEN: Length
                    MIN2 = BRB
                    LEN2 = BRL
                    Local1 = LEN2
                    MAX2 = (MIN2 + Local1--)
                    CreateWordField (CRS2, \_SB.PCI1._Y2A._MIN, MIN4)  // _MIN: Minimum Base Address
                    CreateWordField (CRS2, \_SB.PCI1._Y2A._MAX, MAX4)  // _MAX: Maximum Base Address
                    CreateWordField (CRS2, \_SB.PCI1._Y2A._LEN, LEN4)  // _LEN: Length
                    MIN4 = IOB
                    LEN4 = IOL
                    Local1 = LEN4
                    MAX4 = (MIN4 + Local1--)
                    If (LVGA)
                    {
                        CreateWordField (CRS2, \_SB.PCI1._Y2B._MIN, IMN2)  // _MIN: Minimum Base Address
                        CreateWordField (CRS2, \_SB.PCI1._Y2B._MAX, IMX2)  // _MAX: Maximum Base Address
                        CreateWordField (CRS2, \_SB.PCI1._Y2B._LEN, ILN2)  // _LEN: Length
                        IMN2 = 0x03B0
                        IMX2 = 0x03DF
                        ILN2 = 0x30
                        CreateDWordField (CRS2, \_SB.PCI1._Y2C._MIN, VMN2)  // _MIN: Minimum Base Address
                        CreateDWordField (CRS2, \_SB.PCI1._Y2C._MAX, VMX2)  // _MAX: Maximum Base Address
                        CreateDWordField (CRS2, \_SB.PCI1._Y2C._LEN, VLN2)  // _LEN: Length
                        VMN2 = 0x000A0000
                        VMX2 = 0x000BFFFF
                        VLN2 = 0x00020000
                    }

                    CreateDWordField (CRS2, \_SB.PCI1._Y2D._MIN, MIN5)  // _MIN: Minimum Base Address
                    CreateDWordField (CRS2, \_SB.PCI1._Y2D._MAX, MAX5)  // _MAX: Maximum Base Address
                    CreateDWordField (CRS2, \_SB.PCI1._Y2D._LEN, LEN5)  // _LEN: Length
                    MIN5 = MBB
                    LEN5 = MBL
                    Local1 = LEN5
                    MAX5 = (MIN5 + Local1--)
                    If (MALH || MALL)
                    {
                        CreateQWordField (CRS2, \_SB.PCI1._Y2E._MIN, MN9L)  // _MIN: Minimum Base Address
                        Local0 = 0x76
                        CreateDWordField (CRS2, Local0, MN9H)
                        CreateQWordField (CRS2, \_SB.PCI1._Y2E._MAX, MX9L)  // _MAX: Maximum Base Address
                        Local1 = 0x7E
                        CreateDWordField (CRS2, Local1, MX9H)
                        CreateQWordField (CRS2, \_SB.PCI1._Y2E._LEN, LN9L)  // _LEN: Length
                        Local2 = 0x8E
                        CreateDWordField (CRS2, Local2, LN9H)
                        MN9L = MABL
                        MN9H = MABH
                        LN9L = MALL
                        LN9H = MALH
                        MX9L = MAML
                        MX9H = MAMH
                    }

                    Return (CRS2)
                }
            }

            Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
            {
                Name (SUPP, Zero)
                Name (CTRL, Zero)
                CreateDWordField (Arg3, Zero, CDW1)
                CreateDWordField (Arg3, 0x04, CDW2)
                CreateDWordField (Arg3, 0x08, CDW3)
                If (Arg0 == ToUUID ("33db4d5b-1ff7-401c-9657-7441c03dd766") /* PCI Host Bridge Device */)
                {
                    SUPP = CDW2
                    CTRL = CDW3
                    If ((SUPP & 0x16) != 0x16)
                    {
                        CTRL &= 0x1E
                    }

                    If (!PEHP)
                    {
                        CTRL &= 0x1E
                    }

                    If (!SHPC)
                    {
                        CTRL &= 0x1D
                    }

                    If (!PEPM)
                    {
                        CTRL &= 0x1B
                    }

                    If (!PEER)
                    {
                        CTRL &= 0x15
                    }

                    If (!PECS)
                    {
                        CTRL &= 0x0F
                    }

                    If (Arg1 != One)
                    {
                        CDW1 |= 0x08
                    }

                    If (CDW3 != CTRL)
                    {
                        CDW1 |= 0x10
                    }

                    CTRL &= 0x1B
                    CDW3 = CTRL
                    Return (Arg3)
                }
                Else
                {
                    CDW1 |= 0x04
                    Return (Arg3)
                }
            }

            Name (_PXM, One)  // _PXM: Device Proximity
            Method (BN20, 0, NotSerialized)
            {
                Return (BRB)
            }

            Method (BN40, 0, NotSerialized)
            {
                Return (BRB)
            }

            Method (BN80, 0, NotSerialized)
            {
                Return (BRB)
            }

            Device (IOH1)
            {
                Name (_HID, EisaId ("PNP0C01"))  // _HID: Hardware ID
                Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                {
                })
            }

            Device (^UNC1)
            {
                Name (_HID, EisaId ("PNP0A03"))  // _HID: Hardware ID
                Method (_UID, 0, NotSerialized)  // _UID: Unique ID
                {
                    Local0 = (^^PCI1.BRB + ^^PCI1.BRL)
                    Return (Local0)
                }

                Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                {
                    Local0 = (^^PCI1.BRB + ^^PCI1.BRL)
                    Return (Local0)
                }

                Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
                {
                    Return (Arg3)
                }

                Name (_ADR, Zero)  // _ADR: Address
                Name (_PXM, One)  // _PXM: Device Proximity
                Name (CRS1, ResourceTemplate ()
                {
                    WordBusNumber (ResourceProducer, MinFixed, MaxFixed, PosDecode,
                        0x0000,             // Granularity
                        0x00FF,             // Range Minimum
                        0x00FF,             // Range Maximum
                        0x0000,             // Translation Offset
                        0x0001,             // Length
                        ,, _Y2F)
                })
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Local0 = (^^PCI1.BRB + ^^PCI1.BRL)
                    CreateWordField (CRS1, \_SB.UNC1._Y2F._MIN, UMIN)  // _MIN: Minimum Base Address
                    UMIN = Local0
                    CreateWordField (CRS1, \_SB.UNC1._Y2F._MAX, UMAX)  // _MAX: Maximum Base Address
                    UMAX = Local0
                    Return (CRS1)
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (^^PCI1.STAV)
                }
            }

            Device (VTDR)
            {
                Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
                Name (_UID, 0x05)  // _UID: Unique ID
                Name (BUF0, ResourceTemplate ()
                {
                    Memory32Fixed (ReadOnly,
                        0x00000000,         // Address Base
                        0x00002000,         // Address Length
                        _Y30)
                })
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (VTD1 == 0xFFFFFFFF)
                    {
                        Return (Zero)
                    }

                    Return (0x0F)
                }

                Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                {
                    CreateDWordField (BUF0, \_SB.PCI1.VTDR._Y30._BAS, VBR1)  // _BAS: Base Address
                    CreateDWordField (BUF0, \_SB.PCI1.VTDR._Y30._LEN, VLT1)  // _LEN: Length
                    VBR1 = VTD1
                    If (VTD1 == 0xFFFFFFFF)
                    {
                        VLT1 = Zero
                    }

                    Return (BUF0)
                }
            }

            Device (NPE0)
            {
                Name (_ADR, Zero)  // _ADR: Address
            }

            Device (NPE1)
            {
                Name (_ADR, 0x00010000)  // _ADR: Address
            }

            Device (NPE2)
            {
                Name (_ADR, 0x00010001)  // _ADR: Address
            }

            Device (NPE4)
            {
                Name (_ADR, 0x00020001)  // _ADR: Address
            }

            Device (NPE5)
            {
                Name (_ADR, 0x00020002)  // _ADR: Address
            }

            Device (NPE6)
            {
                Name (_ADR, 0x00020003)  // _ADR: Address
            }

            Device (NPE8)
            {
                Name (_ADR, 0x00030001)  // _ADR: Address
            }

            Device (NPE9)
            {
                Name (_ADR, 0x00030002)  // _ADR: Address
            }

            Device (NPEA)
            {
                Name (_ADR, 0x00030003)  // _ADR: Address
            }

            Device (NPE3)
            {
                Name (_ADR, 0x00020000)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR93)
                    }

                    Return (PR93)
                }
            }

            Device (NPE7)
            {
                Name (_ADR, 0x00030000)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR97)
                    }

                    Return (PR97)
                }
            }
        }

        Scope (\_GPE)
        {
            Method (_L08, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
            {
                \_SB.PCI0.SBRG.SIOH ()
            }

            Method (_L0B, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
            {
                Notify (\_SB.PCI0.P0P9, 0x02)
                Notify (\_SB.PWRB, 0x02)
            }

            Method (_L09, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
            {
                Notify (\_SB.PCI0.PEX0, 0x02)
                Notify (\_SB.PCI0.NPE1, 0x02)
                Notify (\_SB.PCI0.NPE4, 0x02)
                Notify (\_SB.PCI0.NPE5, 0x02)
                Notify (\_SB.PCI0.NPE6, 0x02)
                Notify (\_SB.PCI0.NPE8, 0x02)
                Notify (\_SB.PCI0.NPE9, 0x02)
                Notify (\_SB.PCI0.NPEA, 0x02)
                Notify (\_SB.PCI0.PEX1, 0x02)
                Notify (\_SB.PCI0.PEX4, 0x02)
                Notify (\_SB.PCI0.PEX2, 0x02)
                Notify (\_SB.PCI0.PEX3, 0x02)
                Notify (\_SB.PCI0.PEX5, 0x02)
                Notify (\_SB.PCI0.PEX6, 0x02)
                Notify (\_SB.PCI0.PEX7, 0x02)
                Notify (\_SB.PCI0.NPE2, 0x02)
                Notify (\_SB.PCI0.NPE3, 0x02)
                Notify (\_SB.PCI0.NPE7, 0x02)
                Notify (\_SB.PCI1.NPE3, 0x02)
                Notify (\_SB.PCI1.NPE7, 0x02)
            }

            Method (_L0D, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
            {
                Notify (\_SB.PCI0.GBE, 0x02)
                Notify (\_SB.PWRB, 0x02)
            }
        }

        Device (PWRB)
        {
            Name (_HID, EisaId ("PNP0C0C"))  // _HID: Hardware ID
            Name (_UID, 0xAA)  // _UID: Unique ID
            Name (_STA, 0x0B)  // _STA: Status
        }
    }

    OperationRegion (_SB.PCI0.SBRG.PIX0, PCI_Config, 0x60, 0x0C)
    Field (\_SB.PCI0.SBRG.PIX0, ByteAcc, NoLock, Preserve)
    {
        PIRA,   8, 
        PIRB,   8, 
        PIRC,   8, 
        PIRD,   8, 
        Offset (0x08), 
        PIRE,   8, 
        PIRF,   8, 
        PIRG,   8, 
        PIRH,   8
    }

    Scope (_SB)
    {
        Name (BUFA, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {15}
        })
        CreateWordField (BUFA, One, IRA0)
        Device (LNKA)
        {
            Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Local0 = (PIRA & 0x80)
                If (Local0)
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSA)
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                PIRA |= 0x80
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Local0 = (PIRA & 0x0F)
                IRA0 = (One << Local0)
                Return (BUFA)
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Local0--
                PIRA = Local0
            }
        }

        Device (LNKB)
        {
            Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
            Name (_UID, 0x02)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Local0 = (PIRB & 0x80)
                If (Local0)
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSB)
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                PIRB |= 0x80
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Local0 = (PIRB & 0x0F)
                IRA0 = (One << Local0)
                Return (BUFA)
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Local0--
                PIRB = Local0
            }
        }

        Device (LNKC)
        {
            Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
            Name (_UID, 0x03)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Local0 = (PIRC & 0x80)
                If (Local0)
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSC)
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                PIRC |= 0x80
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Local0 = (PIRC & 0x0F)
                IRA0 = (One << Local0)
                Return (BUFA)
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Local0--
                PIRC = Local0
            }
        }

        Device (LNKD)
        {
            Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
            Name (_UID, 0x04)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Local0 = (PIRD & 0x80)
                If (Local0)
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSD)
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                PIRD |= 0x80
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Local0 = (PIRD & 0x0F)
                IRA0 = (One << Local0)
                Return (BUFA)
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Local0--
                PIRD = Local0
            }
        }

        Device (LNKE)
        {
            Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
            Name (_UID, 0x05)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Local0 = (PIRE & 0x80)
                If (Local0)
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSE)
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                PIRE |= 0x80
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Local0 = (PIRE & 0x0F)
                IRA0 = (One << Local0)
                Return (BUFA)
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Local0--
                PIRE = Local0
            }
        }

        Device (LNKF)
        {
            Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
            Name (_UID, 0x06)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Local0 = (PIRF & 0x80)
                If (Local0)
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSF)
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                PIRF |= 0x80
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Local0 = (PIRF & 0x0F)
                IRA0 = (One << Local0)
                Return (BUFA)
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Local0--
                PIRF = Local0
            }
        }

        Device (LNKG)
        {
            Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
            Name (_UID, 0x07)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Local0 = (PIRG & 0x80)
                If (Local0)
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSG)
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                PIRG |= 0x80
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Local0 = (PIRG & 0x0F)
                IRA0 = (One << Local0)
                Return (BUFA)
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Local0--
                PIRG = Local0
            }
        }

        Device (LNKH)
        {
            Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
            Name (_UID, 0x08)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Local0 = (PIRH & 0x80)
                If (Local0)
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSH)
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                PIRH |= 0x80
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Local0 = (PIRH & 0x0F)
                IRA0 = (One << Local0)
                Return (BUFA)
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Local0--
                PIRH = Local0
            }
        }
    }

    OperationRegion (_SB.PCI0.SBRG.LPCR, PCI_Config, 0x80, 0x04)
    Field (\_SB.PCI0.SBRG.LPCR, ByteAcc, NoLock, Preserve)
    {
        CADR,   3, 
            ,   1, 
        CBDR,   3, 
        Offset (0x01), 
        LTDR,   2, 
            ,   2, 
        FDDR,   1, 
        Offset (0x02), 
        CALE,   1, 
        CBLE,   1, 
        LTLE,   1, 
        FDLE,   1, 
        Offset (0x03), 
        GLLE,   1, 
        GHLE,   1, 
        KCLE,   1, 
        MCLE,   1, 
        C1LE,   1, 
        C2LE,   1, 
        Offset (0x04)
    }

    Method (UXDV, 1, Serialized)
    {
        Name (T_0, Zero)
        Local0 = 0xFF
        While (One)
        {
            T_0 = (Arg0 + Zero)
            If (T_0 == 0x03F8)
            {
                Local0 = Zero
            }
            ElseIf (T_0 == 0x02F8)
            {
                Local0 = One
            }
            ElseIf (T_0 == 0x0220)
            {
                Local0 = 0x02
            }
            ElseIf (T_0 == 0x0228)
            {
                Local0 = 0x03
            }
            ElseIf (T_0 == 0x0238)
            {
                Local0 = 0x04
            }
            ElseIf (T_0 == 0x02E8)
            {
                Local0 = 0x05
            }
            ElseIf (T_0 == 0x0338)
            {
                Local0 = 0x06
            }
            ElseIf (T_0 == 0x03E8)
            {
                Local0 = 0x07
            }

            Break
        }

        Return (Local0)
    }

    Method (RRIO, 4, Serialized)
    {
        Name (T_0, Zero)
        While (One)
        {
            T_0 = (Arg0 + Zero)
            If (T_0 == Zero)
            {
                CALE = Zero
                Local0 = UXDV (Arg2)
                If (Local0 != 0xFF)
                {
                    CADR = Local0
                }

                If (Arg1)
                {
                    CALE = One
                }
            }
            ElseIf (T_0 == One)
            {
                CBLE = Zero
                Local0 = UXDV (Arg2)
                If (Local0 != 0xFF)
                {
                    CBDR = Local0
                }

                If (Arg1)
                {
                    CBLE = One
                }
            }
            ElseIf (T_0 == 0x02)
            {
                LTLE = Zero
                If (Arg2 == 0x0378)
                {
                    LTDR = Zero
                }

                If (Arg2 == 0x0278)
                {
                    LTDR = One
                }

                If (Arg2 == 0x03BC)
                {
                    LTDR = 0x02
                }

                If (Arg1)
                {
                    LTLE = One
                }
            }
            ElseIf (T_0 == 0x03)
            {
                FDLE = Zero
                If (Arg2 == 0x03F0)
                {
                    FDDR = Zero
                }

                If (Arg2 == 0x0370)
                {
                    FDDR = One
                }

                If (Arg1)
                {
                    FDLE = One
                }
            }
            ElseIf (T_0 == 0x08)
            {
                If (Arg2 == 0x0200)
                {
                    If (Arg1)
                    {
                        GLLE = One
                    }
                    Else
                    {
                        GLLE = Zero
                    }
                }

                If (Arg2 == 0x0208)
                {
                    If (Arg1)
                    {
                        GHLE = One
                    }
                    Else
                    {
                        GHLE = Zero
                    }
                }
            }
            ElseIf (T_0 == 0x09)
            {
                If (Arg2 == 0x0200)
                {
                    If (Arg1)
                    {
                        GLLE = One
                    }
                    Else
                    {
                        GLLE = Zero
                    }
                }

                If (Arg2 == 0x0208)
                {
                    If (Arg1)
                    {
                        GHLE = One
                    }
                    Else
                    {
                        GHLE = Zero
                    }
                }
            }
            ElseIf (T_0 == 0x0A)
            {
                If ((Arg2 == 0x60) || (Arg2 == 0x64))
                {
                    If (Arg1)
                    {
                        KCLE = One
                    }
                    Else
                    {
                        KCLE = Zero
                    }
                }
            }
            ElseIf (T_0 == 0x0B)
            {
                If ((Arg2 == 0x62) || (Arg2 == 0x66))
                {
                    If (Arg1)
                    {
                        MCLE = One
                    }
                    Else
                    {
                        MCLE = Zero
                    }
                }
            }
            ElseIf (T_0 == 0x0C)
            {
                If (Arg2 == 0x2E)
                {
                    If (Arg1)
                    {
                        C1LE = One
                    }
                    Else
                    {
                        C1LE = Zero
                    }
                }

                If (Arg2 == 0x4E)
                {
                    If (Arg1)
                    {
                        C2LE = One
                    }
                    Else
                    {
                        C2LE = Zero
                    }
                }
            }
            ElseIf (T_0 == 0x0D)
            {
                If (Arg2 == 0x2E)
                {
                    If (Arg1)
                    {
                        C1LE = One
                    }
                    Else
                    {
                        C1LE = Zero
                    }
                }

                If (Arg2 == 0x4E)
                {
                    If (Arg1)
                    {
                        C2LE = One
                    }
                    Else
                    {
                        C2LE = Zero
                    }
                }
            }

            Break
        }
    }

    Method (RDMA, 3, NotSerialized)
    {
    }

    Scope (_SB)
    {
        Scope (PCI0)
        {
            Device (HPET)
            {
                Name (_HID, EisaId ("PNP0103"))  // _HID: Hardware ID
                Name (CRS, ResourceTemplate ()
                {
                    IRQNoFlags ()
                        {0,8,11,15}
                    Memory32Fixed (ReadWrite,
                        0xFED00000,         // Address Base
                        0x00000400,         // Address Length
                        _Y31)
                })
                OperationRegion (HCNT, SystemMemory, HPTC, 0x04)
                Field (HCNT, DWordAcc, NoLock, Preserve)
                {
                    HPTS,   2, 
                        ,   5, 
                    HPTE,   1
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (HPTE)
                    {
                        Return (0x0F)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    CreateDWordField (CRS, \_SB.PCI0.HPET._Y31._BAS, HTBS)  // _BAS: Base Address
                    Local0 = (HPTS * 0x1000)
                    HTBS = (Local0 + 0xFED00000)
                    Return (CRS)
                }
            }
        }
    }

    Name (WOTB, Zero)
    Name (WSSB, Zero)
    Name (WAXB, Zero)
    OperationRegion (SWSM, SystemIO, 0xB2, One)
    Field (SWSM, ByteAcc, NoLock, Preserve)
    {
        SWB2,   8
    }

    OperationRegion (TSMI, SystemIO, SMIT, 0x02)
    Field (TSMI, ByteAcc, NoLock, Preserve)
    {
        INQ,    8, 
        DAT,    8
    }

    Method (_PTS, 1, NotSerialized)  // _PTS: Prepare To Sleep
    {
        DBG8 = Arg0
        If ((Arg0 == 0x04) && (OSFL () == 0x02))
        {
            Sleep (0x0BB8)
        }

        PTS (Arg0)
        WAKP [Zero] = Zero
        WAKP [One] = Zero
        WSSB = ASSB
        WOTB = AOTB
        WAXB = AAXB
        ASSB = Arg0
        AOTB = OSFL ()
        AAXB = Zero
        \_SB.SLPS = One
        If (Arg0 == 0x05)
        {
            SWB2 = 0xE0
        }
    }

    Method (_WAK, 1, NotSerialized)  // _WAK: Wake
    {
        If ((Arg0 < One) || (Arg0 > 0x05))
        {
            Arg0 = 0x03
        }

        If ((Arg0 < One) || (Arg0 > 0x05))
        {
            Arg0 = 0x03
        }

        DBG8 = (Arg0 << 0x04)
        WAK (Arg0)
        If (ASSB)
        {
            ASSB = WSSB
            AOTB = WOTB
            AAXB = WAXB
        }

        If (Arg0 == 0x03)
        {
            INQ = 0xEE
        }

        If (DerefOf (WAKP [Zero]))
        {
            WAKP [One] = Zero
        }
        Else
        {
            WAKP [One] = Arg0
        }

        Return (WAKP)
    }

    Device (LDRC)
    {
        Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
        Name (_UID, 0x0E11)  // _UID: Unique ID
    }

    Device (_SB.RMEM)
    {
        Name (_HID, EisaId ("PNP0C01"))  // _HID: Hardware ID
        Name (_UID, One)  // _UID: Unique ID
    }

    OperationRegion (GSTS, SystemIO, 0x0422, One)
    Field (GSTS, ByteAcc, NoLock, Preserve)
    {
        GP0,    1, 
        Offset (0x01)
    }

    OperationRegion (PMIO, SystemIO, PMBS, 0x80)
    Field (PMIO, ByteAcc, NoLock, Preserve)
    {
        Offset (0x20), 
        Offset (0x22), 
        GP00,   1
    }

    OperationRegion (DBG0, SystemIO, 0x80, 0x02)
    Field (DBG0, ByteAcc, NoLock, Preserve)
    {
        IO80,   8, 
        IO81,   8
    }

    OperationRegion (GINV, SystemIO, 0x052C, One)
    Field (GINV, ByteAcc, NoLock, Preserve)
    {
        GPIN,   1, 
        Offset (0x01)
    }

    Scope (_SB)
    {
        Name (\PCAP, 0x00010000)
        Method (\_GPE._L10, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            GP0 = One
            GPIN ^= One
            IO80 = 0xBB
            Notify (\_SB.WERR, 0x80)
        }

        Device (WERR)
        {
            Name (_HID, EisaId ("PNP0C33"))  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (OSFL () == 0x0A)
                {
                    If (PCAP & 0x00010000)
                    {
                        Return (0x0F)
                    }
                }

                Return (Zero)
            }
        }

        OperationRegion (SWPT, SystemIO, 0xB2, 0x02)
        Field (SWPT, ByteAcc, Lock, Preserve)
        {
            SWIC,   8, 
            SWIS,   8
        }

        OperationRegion (GNVS, SystemMemory, 0xFFFF0000, 0x06)
        Field (GNVS, AnyAcc, Lock, Preserve)
        {
            WSIS,   16, 
            WSIB,   8, 
            WSID,   8, 
            WSIF,   8, 
            WSTS,   8
        }

        Method (SWWE, 1, NotSerialized)
        {
            SWIC = Zero
            SWIC = Arg0
        }

        Device (SRIO)
        {
            Name (_HID, "PNP0C14")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_WDG, Buffer (0x14)
            {
                /* 0000 */  0xF2, 0xF9, 0x7A, 0x0E, 0xA1, 0x44, 0x6F, 0x4C,
                /* 0008 */  0xA4, 0xB0, 0xA7, 0x67, 0x84, 0x80, 0xDA, 0x61,
                /* 0010 */  0x41, 0x41, 0x01, 0x02                         
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Method (WMAA, 3, NotSerialized)
            {
                Local0 = Arg2
                CreateWordField (Local0, Zero, CPW0)
                CreateByteField (Local0, 0x02, CPB2)
                CreateByteField (Local0, 0x03, CPB3)
                CreateByteField (Local0, 0x04, CPB4)
                CreateByteField (Local0, 0x05, CPB5)
                WSIS = CPW0
                WSIB = CPB2
                WSID = CPB3
                WSIF = CPB4
                If (Arg1 == One)
                {
                    SWIS = One
                    SWWE (0x73)
                }

                If (Arg1 == 0x02)
                {
                    SWIS = 0x02
                    SWWE (0x73)
                }

                If (Arg1 == 0x03)
                {
                    SWIS = 0x03
                    SWWE (0x73)
                }

                Return (Zero)
            }
        }
    }

    Method (WOSC, 4, NotSerialized)
    {
        CreateDWordField (Arg3, Zero, CDW1)
        If (Arg0 == ToUUID ("ed855e0c-6c90-47bf-a62a-26de0fc5ad5c"))
        {
            CreateDWordField (Arg3, 0x04, CDW2)
            CreateDWordField (Arg3, 0x08, CDW3)
            If (WHEA)
            {
                If (CDW2 & One)
                {
                    Return (One)
                }
            }
        }
        Else
        {
            CDW1 |= 0x04
        }

        Return (Zero)
    }

    Scope (_SB)
    {
        Name (\PETE, Zero)
        Name (\PSTE, Zero)
        Name (\TSTE, Zero)
        Name (\NPB0, One)
        Name (\NPB1, One)
        Name (\NPB2, Zero)
        Name (\NPB3, Zero)
        Name (P0ID, Zero)
        Name (P1ID, 0x20)
        Name (P2ID, 0x40)
        Name (P3ID, 0x60)
        Name (P0BM, 0x000FFFFF)
        Name (P1BM, 0x000FFFFF)
        Name (P2BM, Zero)
        Name (P3BM, Zero)
        Name (CUU0, Zero)
        Name (CUU1, Zero)
        Name (CUU2, Zero)
        Name (CUU3, Zero)
        Method (PSTA, 1, NotSerialized)
        {
            If (Arg0 == Zero)
            {
                If (NPB0)
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            If (Arg0 == One)
            {
                If (NPB1)
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            If (Arg0 == 0x02)
            {
                If (NPB2)
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            If (Arg0 == 0x03)
            {
                If (NPB3)
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Return (Zero)
        }

        Method (CSTA, 2, NotSerialized)
        {
            Local0 = Zero
            If (Arg0 == Zero)
            {
                Local0 = (P0BM >> Arg1)
            }

            If (Arg0 == One)
            {
                Local0 = (P1BM >> Arg1)
            }

            If (Arg0 == 0x02)
            {
                Local0 = (P2BM >> Arg1)
            }

            If (Arg0 == 0x03)
            {
                Local0 = (P3BM >> Arg1)
            }

            Local0 &= One
            If (Local0 == Zero)
            {
                Return (Zero)
            }
            Else
            {
                Return (One)
            }
        }

        Device (SCK0)
        {
            Name (_HID, "ACPI0004")  // _HID: Hardware ID
            Name (_UID, "CPUSCK0")  // _UID: Unique ID
            Name (SCKN, Zero)
            Name (LSTA, 0xFF)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Local0 = PSTA (Zero)
                Local1 = (Local0 & 0x03)
                LSTA = Local1
                Return (Local0)
            }

            Processor (C000, 0x00, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI0-CP000")  // _UID: Unique ID
                Name (_PXM, Zero)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (Zero, Zero) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C001, 0x01, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI0-CP001")  // _UID: Unique ID
                Name (_PXM, Zero)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (Zero, One) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C002, 0x02, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI0-CP002")  // _UID: Unique ID
                Name (_PXM, Zero)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (Zero, 0x02) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C003, 0x03, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI0-CP003")  // _UID: Unique ID
                Name (_PXM, Zero)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (Zero, 0x03) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C004, 0x04, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI0-CP004")  // _UID: Unique ID
                Name (_PXM, Zero)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (Zero, 0x04) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C005, 0x05, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI0-CP005")  // _UID: Unique ID
                Name (_PXM, Zero)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (Zero, 0x05) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C006, 0x06, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI0-CP006")  // _UID: Unique ID
                Name (_PXM, Zero)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (Zero, 0x06) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C007, 0x07, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI0-CP007")  // _UID: Unique ID
                Name (_PXM, Zero)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (Zero, 0x07) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C008, 0x08, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI0-CP008")  // _UID: Unique ID
                Name (_PXM, Zero)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (Zero, 0x08) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C009, 0x09, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI0-CP009")  // _UID: Unique ID
                Name (_PXM, Zero)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (Zero, 0x09) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C00A, 0x0A, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI0-CP00A")  // _UID: Unique ID
                Name (_PXM, Zero)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (Zero, 0x0A) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C00B, 0x0B, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI0-CP00B")  // _UID: Unique ID
                Name (_PXM, Zero)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (Zero, 0x0B) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C00C, 0x0C, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI0-CP00C")  // _UID: Unique ID
                Name (_PXM, Zero)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (Zero, 0x0C) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C00D, 0x0D, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI0-CP00D")  // _UID: Unique ID
                Name (_PXM, Zero)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (Zero, 0x0D) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C00E, 0x0E, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI0-CP00E")  // _UID: Unique ID
                Name (_PXM, Zero)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (Zero, 0x0E) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C00F, 0x0F, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI0-CP00F")  // _UID: Unique ID
                Name (_PXM, Zero)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (Zero, 0x0F) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C010, 0x10, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI0-CP010")  // _UID: Unique ID
                Name (_PXM, Zero)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (Zero, 0x10) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C011, 0x11, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI0-CP011")  // _UID: Unique ID
                Name (_PXM, Zero)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (Zero, 0x11) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C012, 0x12, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI0-CP012")  // _UID: Unique ID
                Name (_PXM, Zero)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (Zero, 0x12) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C013, 0x13, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI0-CP013")  // _UID: Unique ID
                Name (_PXM, Zero)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (Zero, 0x13) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C014, 0x80, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI0-CP014")  // _UID: Unique ID
                Name (_PXM, Zero)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (Zero, 0x14) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C015, 0x81, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI0-CP015")  // _UID: Unique ID
                Name (_PXM, Zero)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (Zero, 0x15) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C016, 0x82, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI0-CP016")  // _UID: Unique ID
                Name (_PXM, Zero)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (Zero, 0x16) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C017, 0x83, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI0-CP017")  // _UID: Unique ID
                Name (_PXM, Zero)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (Zero, 0x17) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C018, 0x84, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI0-CP018")  // _UID: Unique ID
                Name (_PXM, Zero)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (Zero, 0x18) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C019, 0x85, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI0-CP019")  // _UID: Unique ID
                Name (_PXM, Zero)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (Zero, 0x19) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C01A, 0x86, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI0-CP01A")  // _UID: Unique ID
                Name (_PXM, Zero)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (Zero, 0x1A) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C01B, 0x87, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI0-CP01B")  // _UID: Unique ID
                Name (_PXM, Zero)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (Zero, 0x1B) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C01C, 0x88, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI0-CP01C")  // _UID: Unique ID
                Name (_PXM, Zero)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (Zero, 0x1C) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C01D, 0x89, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI0-CP01D")  // _UID: Unique ID
                Name (_PXM, Zero)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (Zero, 0x1D) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }
        }

        Device (SCK1)
        {
            Name (_HID, "ACPI0004")  // _HID: Hardware ID
            Name (_UID, "CPUSCK1")  // _UID: Unique ID
            Name (SCKN, One)
            Name (LSTA, 0xFF)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Local0 = PSTA (One)
                Local1 = (Local0 & 0x03)
                LSTA = Local1
                Return (Local0)
            }

            Processor (C100, 0x14, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI1-CP100")  // _UID: Unique ID
                Name (_PXM, One)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (One, Zero) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C101, 0x15, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI1-CP101")  // _UID: Unique ID
                Name (_PXM, One)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (One, One) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C102, 0x16, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI1-CP102")  // _UID: Unique ID
                Name (_PXM, One)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (One, 0x02) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C103, 0x17, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI1-CP103")  // _UID: Unique ID
                Name (_PXM, One)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (One, 0x03) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C104, 0x18, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI1-CP104")  // _UID: Unique ID
                Name (_PXM, One)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (One, 0x04) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C105, 0x19, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI1-CP105")  // _UID: Unique ID
                Name (_PXM, One)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (One, 0x05) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C106, 0x1A, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI1-CP106")  // _UID: Unique ID
                Name (_PXM, One)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (One, 0x06) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C107, 0x1B, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI1-CP107")  // _UID: Unique ID
                Name (_PXM, One)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (One, 0x07) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C108, 0x1C, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI1-CP108")  // _UID: Unique ID
                Name (_PXM, One)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (One, 0x08) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C109, 0x1D, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI1-CP109")  // _UID: Unique ID
                Name (_PXM, One)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (One, 0x09) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C10A, 0x1E, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI1-CP10A")  // _UID: Unique ID
                Name (_PXM, One)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (One, 0x0A) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C10B, 0x1F, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI1-CP10B")  // _UID: Unique ID
                Name (_PXM, One)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (One, 0x0B) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C10C, 0x20, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI1-CP10C")  // _UID: Unique ID
                Name (_PXM, One)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (One, 0x0C) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C10D, 0x21, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI1-CP10D")  // _UID: Unique ID
                Name (_PXM, One)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (One, 0x0D) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C10E, 0x22, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI1-CP10E")  // _UID: Unique ID
                Name (_PXM, One)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (One, 0x0E) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C10F, 0x23, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI1-CP10F")  // _UID: Unique ID
                Name (_PXM, One)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (One, 0x0F) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C110, 0x24, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI1-CP110")  // _UID: Unique ID
                Name (_PXM, One)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (One, 0x10) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C111, 0x25, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI1-CP111")  // _UID: Unique ID
                Name (_PXM, One)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (One, 0x11) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C112, 0x26, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI1-CP112")  // _UID: Unique ID
                Name (_PXM, One)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (One, 0x12) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C113, 0x27, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI1-CP113")  // _UID: Unique ID
                Name (_PXM, One)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (One, 0x13) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C114, 0x8A, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI1-CP114")  // _UID: Unique ID
                Name (_PXM, One)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (One, 0x14) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C115, 0x8B, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI1-CP115")  // _UID: Unique ID
                Name (_PXM, One)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (One, 0x15) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C116, 0x8C, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI1-CP116")  // _UID: Unique ID
                Name (_PXM, One)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (One, 0x16) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C117, 0x8D, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI1-CP117")  // _UID: Unique ID
                Name (_PXM, One)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (One, 0x17) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C118, 0x8E, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI1-CP118")  // _UID: Unique ID
                Name (_PXM, One)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (One, 0x18) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C119, 0x8F, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI1-CP119")  // _UID: Unique ID
                Name (_PXM, One)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (One, 0x19) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C11A, 0x90, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI1-CP11A")  // _UID: Unique ID
                Name (_PXM, One)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (One, 0x1A) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C11B, 0x91, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI1-CP11B")  // _UID: Unique ID
                Name (_PXM, One)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (One, 0x1B) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C11C, 0x92, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI1-CP11C")  // _UID: Unique ID
                Name (_PXM, One)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (One, 0x1C) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C11D, 0x93, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI1-CP11D")  // _UID: Unique ID
                Name (_PXM, One)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (One, 0x1D) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }
        }

        Device (SCK2)
        {
            Name (_HID, "ACPI0004")  // _HID: Hardware ID
            Name (_UID, "CPUSCK2")  // _UID: Unique ID
            Name (SCKN, 0x02)
            Name (LSTA, 0xFF)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Local0 = PSTA (0x02)
                Local1 = (Local0 & 0x03)
                LSTA = Local1
                Return (Local0)
            }

            Processor (C200, 0x94, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI2-CP200")  // _UID: Unique ID
                Name (_PXM, 0x02)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (0x02, Zero) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C201, 0x95, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI2-CP201")  // _UID: Unique ID
                Name (_PXM, 0x02)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (0x02, One) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C202, 0x96, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI2-CP202")  // _UID: Unique ID
                Name (_PXM, 0x02)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (0x02, 0x02) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C203, 0x97, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI2-CP203")  // _UID: Unique ID
                Name (_PXM, 0x02)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (0x02, 0x03) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C204, 0x98, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI2-CP204")  // _UID: Unique ID
                Name (_PXM, 0x02)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (0x02, 0x04) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C205, 0x99, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI2-CP205")  // _UID: Unique ID
                Name (_PXM, 0x02)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (0x02, 0x05) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C206, 0x9A, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI2-CP206")  // _UID: Unique ID
                Name (_PXM, 0x02)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (0x02, 0x06) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C207, 0x9B, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI2-CP207")  // _UID: Unique ID
                Name (_PXM, 0x02)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (0x02, 0x07) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C208, 0x9C, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI2-CP208")  // _UID: Unique ID
                Name (_PXM, 0x02)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (0x02, 0x08) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C209, 0x9D, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI2-CP209")  // _UID: Unique ID
                Name (_PXM, 0x02)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (0x02, 0x09) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C20A, 0x9E, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI2-CP20A")  // _UID: Unique ID
                Name (_PXM, 0x02)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (0x02, 0x0A) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C20B, 0x9F, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI2-CP20B")  // _UID: Unique ID
                Name (_PXM, 0x02)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (0x02, 0x0B) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C20C, 0xA0, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI2-CP20C")  // _UID: Unique ID
                Name (_PXM, 0x02)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (0x02, 0x0C) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C20D, 0xA1, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI2-CP20D")  // _UID: Unique ID
                Name (_PXM, 0x02)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (0x02, 0x0D) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C20E, 0xA2, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI2-CP20E")  // _UID: Unique ID
                Name (_PXM, 0x02)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (0x02, 0x0E) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C20F, 0xA3, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI2-CP20F")  // _UID: Unique ID
                Name (_PXM, 0x02)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (0x02, 0x0F) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C210, 0xA4, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI2-CP210")  // _UID: Unique ID
                Name (_PXM, 0x02)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (0x02, 0x10) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C211, 0xA5, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI2-CP211")  // _UID: Unique ID
                Name (_PXM, 0x02)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (0x02, 0x11) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C212, 0xA6, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI2-CP212")  // _UID: Unique ID
                Name (_PXM, 0x02)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (0x02, 0x12) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C213, 0xA7, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI2-CP213")  // _UID: Unique ID
                Name (_PXM, 0x02)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (0x02, 0x13) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C214, 0xA8, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI2-CP214")  // _UID: Unique ID
                Name (_PXM, 0x02)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (0x02, 0x14) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C215, 0xA9, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI2-CP215")  // _UID: Unique ID
                Name (_PXM, 0x02)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (0x02, 0x15) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C216, 0xAA, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI2-CP216")  // _UID: Unique ID
                Name (_PXM, 0x02)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (0x02, 0x16) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C217, 0xAB, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI2-CP217")  // _UID: Unique ID
                Name (_PXM, 0x02)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (0x02, 0x17) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C218, 0xAC, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI2-CP218")  // _UID: Unique ID
                Name (_PXM, 0x02)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (0x02, 0x18) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C219, 0xAD, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI2-CP219")  // _UID: Unique ID
                Name (_PXM, 0x02)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (0x02, 0x19) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C21A, 0xAE, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI2-CP21A")  // _UID: Unique ID
                Name (_PXM, 0x02)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (0x02, 0x1A) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C21B, 0xAF, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI2-CP21B")  // _UID: Unique ID
                Name (_PXM, 0x02)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (0x02, 0x1B) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C21C, 0xB0, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI2-CP21C")  // _UID: Unique ID
                Name (_PXM, 0x02)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (0x02, 0x1C) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C21D, 0xB1, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI2-CP21D")  // _UID: Unique ID
                Name (_PXM, 0x02)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (0x02, 0x1D) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }
        }

        Device (SCK3)
        {
            Name (_HID, "ACPI0004")  // _HID: Hardware ID
            Name (_UID, "CPUSCK3")  // _UID: Unique ID
            Name (SCKN, 0x03)
            Name (LSTA, 0xFF)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Local0 = PSTA (0x03)
                Local1 = (Local0 & 0x03)
                LSTA = Local1
                Return (Local0)
            }

            Processor (C300, 0xB2, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI3-CP300")  // _UID: Unique ID
                Name (_PXM, 0x03)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (0x03, Zero) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C301, 0xB3, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI3-CP301")  // _UID: Unique ID
                Name (_PXM, 0x03)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (0x03, One) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C302, 0xB4, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI3-CP302")  // _UID: Unique ID
                Name (_PXM, 0x03)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (0x03, 0x02) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C303, 0xB5, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI3-CP303")  // _UID: Unique ID
                Name (_PXM, 0x03)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (0x03, 0x03) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C304, 0xB6, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI3-CP304")  // _UID: Unique ID
                Name (_PXM, 0x03)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (0x03, 0x04) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C305, 0xB7, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI3-CP305")  // _UID: Unique ID
                Name (_PXM, 0x03)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (0x03, 0x05) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C306, 0xB8, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI3-CP306")  // _UID: Unique ID
                Name (_PXM, 0x03)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (0x03, 0x06) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C307, 0xB9, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI3-CP307")  // _UID: Unique ID
                Name (_PXM, 0x03)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (0x03, 0x07) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C308, 0xBA, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI3-CP308")  // _UID: Unique ID
                Name (_PXM, 0x03)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (0x03, 0x08) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C309, 0xBB, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI3-CP309")  // _UID: Unique ID
                Name (_PXM, 0x03)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (0x03, 0x09) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C30A, 0xBC, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI3-CP30A")  // _UID: Unique ID
                Name (_PXM, 0x03)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (0x03, 0x0A) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C30B, 0xBD, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI3-CP30B")  // _UID: Unique ID
                Name (_PXM, 0x03)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (0x03, 0x0B) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C30C, 0xBE, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI3-CP30C")  // _UID: Unique ID
                Name (_PXM, 0x03)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (0x03, 0x0C) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C30D, 0xBF, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI3-CP30D")  // _UID: Unique ID
                Name (_PXM, 0x03)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (0x03, 0x0D) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C30E, 0xC0, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI3-CP30E")  // _UID: Unique ID
                Name (_PXM, 0x03)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (0x03, 0x0E) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C30F, 0xC1, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI3-CP30F")  // _UID: Unique ID
                Name (_PXM, 0x03)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (0x03, 0x0F) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C310, 0xC2, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI3-CP310")  // _UID: Unique ID
                Name (_PXM, 0x03)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (0x03, 0x10) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C311, 0xC3, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI3-CP311")  // _UID: Unique ID
                Name (_PXM, 0x03)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (0x03, 0x11) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C312, 0xC4, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI3-CP312")  // _UID: Unique ID
                Name (_PXM, 0x03)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (0x03, 0x12) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C313, 0xC5, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI3-CP313")  // _UID: Unique ID
                Name (_PXM, 0x03)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (0x03, 0x13) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C314, 0xC6, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI3-CP314")  // _UID: Unique ID
                Name (_PXM, 0x03)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (0x03, 0x14) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C315, 0xC7, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI3-CP315")  // _UID: Unique ID
                Name (_PXM, 0x03)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (0x03, 0x15) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C316, 0xC8, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI3-CP316")  // _UID: Unique ID
                Name (_PXM, 0x03)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (0x03, 0x16) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C317, 0xC9, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI3-CP317")  // _UID: Unique ID
                Name (_PXM, 0x03)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (0x03, 0x17) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C318, 0xCA, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI3-CP318")  // _UID: Unique ID
                Name (_PXM, 0x03)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (0x03, 0x18) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C319, 0xCB, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI3-CP319")  // _UID: Unique ID
                Name (_PXM, 0x03)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (0x03, 0x19) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C31A, 0xCC, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI3-CP31A")  // _UID: Unique ID
                Name (_PXM, 0x03)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (0x03, 0x1A) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C31B, 0xCD, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI3-CP31B")  // _UID: Unique ID
                Name (_PXM, 0x03)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (0x03, 0x1B) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C31C, 0xCE, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI3-CP31C")  // _UID: Unique ID
                Name (_PXM, 0x03)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (0x03, 0x1C) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }

            Processor (C31D, 0xCF, 0x00000410, 0x06)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, "PCI3-CP31D")  // _UID: Unique ID
                Name (_PXM, 0x03)  // _PXM: Device Proximity
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (CSTA (0x03, 0x1D) == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }
        }
    }

    Method (BCLR, 1, NotSerialized)
    {
        Local0 = Zero
        While (Local0 < SizeOf (Arg0))
        {
            BBWR (Arg0, Local0, Zero)
            Local0++
        }
    }

    Method (BBWR, 3, NotSerialized)
    {
        CreateByteField (Arg0, Arg1, VAL)
        VAL = Arg2
    }

    Method (BBRD, 2, NotSerialized)
    {
        CreateByteField (Arg0, Arg1, VAL)
        Return (VAL)
    }

    Method (BWWR, 3, NotSerialized)
    {
        CreateWordField (Arg0, Arg1, VAL)
        VAL = Arg2
    }

    Method (BWRD, 2, NotSerialized)
    {
        CreateWordField (Arg0, Arg1, VAL)
        Return (VAL)
    }

    Method (BDWR, 3, NotSerialized)
    {
        CreateDWordField (Arg0, Arg1, VAL)
        VAL = Arg2
    }

    Method (BDRD, 2, NotSerialized)
    {
        CreateDWordField (Arg0, Arg1, VAL)
        Return (VAL)
    }

    Method (STRE, 2, Serialized)
    {
        Name (STR1, Buffer (0x50) {})
        Name (STR2, Buffer (0x50) {})
        STR1 = Arg0
        STR2 = Arg1
        Local0 = Zero
        Local1 = One
        While (Local1)
        {
            Local1 = BBRD (STR1, Local0)
            Local2 = BBRD (STR2, Local0)
            If (Local1 != Local2)
            {
                Return (Zero)
            }

            Local0++
        }

        Return (One)
    }

    Method (XPTB, 1, Serialized)
    {
        Local0 = SizeOf (Arg0)
        If (ObjectType (Arg0) == 0x02)
        {
            Local0++
        }

        Name (OBUF, Buffer (Local0) {})
        OBUF = Arg0
        If (ObjectType (Arg0) == 0x02)
        {
            Local0--
            OBUF [Local0] = Zero
        }

        Return (OBUF)
    }

    Method (STDG, 3, NotSerialized)
    {
        Local0 = Arg0
        If (Arg0 >= 0x0A)
        {
            Divide (Arg0, 0x0A, Local0, Local1)
            Arg2 = STDG (Local1, Arg1, Arg2)
        }

        Local0 += 0x30
        Arg1 [Arg2] = Local0
        Arg2++
        Return (Arg2)
    }

    Method (XPTS, 1, Serialized)
    {
        Name (LBUF, Buffer (0x20) {})
        Local0 = STDG (Arg0, LBUF, Zero)
        LBUF [Local0] = Zero
        Local0++
        Name (OBUF, Buffer (Local0) {})
        OBUF = LBUF
        Return (OBUF)
    }

    Scope (\)
    {
        Mutex (SMIX, 0x00)
        Name (SMIB, 0x8A7F6000)
        Name (PSMI, 0xB2)
        Method (SNVC, 1, Serialized)
        {
            OperationRegion (WWPR, SystemMemory, SMIB, 0x04)
            Field (WWPR, DWordAcc, Lock, Preserve)
            {
                SCDW,   32
            }

            SCDW = Arg0
        }

        Method (SNWB, 2, Serialized)
        {
            Local0 = SMIB
            Local0 += Arg1
            Local0 += 0x04
            OperationRegion (WWPR, SystemMemory, Local0, One)
            Field (WWPR, ByteAcc, Lock, Preserve)
            {
                SBY0,   8
            }

            CreateByteField (Arg0, Arg1, SVAL)
            SBY0 = SVAL
        }

        Method (SNRB, 2, Serialized)
        {
            Local0 = SMIB
            Local0 += Arg1
            Local0 += 0x04
            OperationRegion (WWPR, SystemMemory, Local0, 0x04)
            Field (WWPR, ByteAcc, Lock, Preserve)
            {
                SBY0,   8
            }

            CreateByteField (Arg0, Arg1, SVAL)
            SVAL = SBY0
            Return (Arg0)
        }

        Method (SNVP, 2, Serialized)
        {
            Local0 = SMIB
            Local0 += Arg1
            Local0 += 0x04
            OperationRegion (WWPR, SystemMemory, Local0, 0x04)
            Field (WWPR, ByteAcc, Lock, Preserve)
            {
                SDW0,   32
            }

            CreateDWordField (Arg0, Arg1, SVAL)
            SDW0 = SVAL
        }

        Method (SNVG, 2, Serialized)
        {
            Local0 = SMIB
            Local0 += Arg1
            Local0 += 0x04
            OperationRegion (WWPR, SystemMemory, Local0, 0x04)
            Field (WWPR, ByteAcc, Lock, Preserve)
            {
                SDW0,   32
            }

            CreateDWordField (Arg0, Arg1, SVAL)
            SVAL = SDW0
            Return (Arg0)
        }

        Method (GENS, 3, NotSerialized)
        {
            Acquire (SMIX, 0xFFFF)
            Local0 = Arg1
            If (ObjectType (Arg1) == One)
            {
                Local0 = SMBI (Arg0, Arg1)
            }

            If (ObjectType (Arg1) == 0x03)
            {
                Local0 = SMBF (Arg0, Arg1, Arg2)
            }

            Release (SMIX)
            Return (Local0)
        }

        Method (SMBI, 2, Serialized)
        {
            SNVC (Arg0)
            Local0 = (SMIB + 0x04)
            OperationRegion (WWPR, SystemMemory, Local0, 0x04)
            Field (WWPR, ByteAcc, Lock, Preserve)
            {
                SDW0,   32
            }

            SDW0 = Arg1
            ASMI ()
            Return (SDW0)
        }

        Method (SMBF, 3, NotSerialized)
        {
            If (Arg2 > 0xFC)
            {
                Return (Arg1)
            }

            If (SizeOf (Arg1) < Arg2)
            {
                Return (Arg1)
            }

            SNVC (Arg0)
            Divide (Arg2, 0x04, Local3, Local4)
            Local0 = Zero
            While (Local0 < Local3)
            {
                SNWB (Arg1, Local0)
                Local0++
            }

            While (Local0 < Arg2)
            {
                SNVP (Arg1, Local0)
                Local0 += 0x04
            }

            ASMI ()
            Local0 = Zero
            While (Local0 < Local3)
            {
                Arg1 = SNRB (Arg1, Local0)
                Local0++
            }

            While (Local0 < Arg2)
            {
                Arg1 = SNVG (Arg1, Local0)
                Local0 += 0x04
            }

            Return (Arg1)
        }

        Method (ASMI, 0, Serialized)
        {
            OperationRegion (SMIR, SystemIO, PSMI, One)
            Field (SMIR, ByteAcc, Lock, Preserve)
            {
                SCMD,   8
            }

            SCMD = 0x04
        }
    }

    Scope (_SB.PCI0)
    {
        Method (UPRW, 0, NotSerialized)
        {
            Local0 = GENS (0x18, One, Zero)
            Return (Local0)
        }
    }

    Scope (_SB.PCI0.EH01)
    {
        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            Local0 = UPRW ()
            If (Local0 == 0x03)
            {
                Return (Package (0x02)
                {
                    0x0D, 
                    0x03
                })
            }

            If (Local0 == One)
            {
                Return (Package (0x02)
                {
                    0x0D, 
                    One
                })
            }

            Return (Package (0x02)
            {
                0x0D, 
                Zero
            })
        }
    }

    Scope (_SB.PCI0.EH02)
    {
        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            Local0 = UPRW ()
            If (Local0 == 0x03)
            {
                Return (Package (0x02)
                {
                    0x0D, 
                    0x03
                })
            }

            If (Local0 == One)
            {
                Return (Package (0x02)
                {
                    0x0D, 
                    One
                })
            }

            Return (Package (0x02)
            {
                0x0D, 
                Zero
            })
        }
    }

    Name (_S0, Package (0x04)  // _S0_: S0 System State
    {
        Zero, 
        Zero, 
        Zero, 
        Zero
    })
    If (SS1)
    {
        Name (_S1, Package (0x04)  // _S1_: S1 System State
        {
            One, 
            Zero, 
            Zero, 
            Zero
        })
    }

    If (SS3)
    {
        Name (_S3, Package (0x04)  // _S3_: S3 System State
        {
            0x05, 
            Zero, 
            Zero, 
            Zero
        })
    }

    If (SS4)
    {
        Name (_S4, Package (0x04)  // _S4_: S4 System State
        {
            0x06, 
            Zero, 
            Zero, 
            Zero
        })
    }

    Name (_S5, Package (0x04)  // _S5_: S5 System State
    {
        0x07, 
        Zero, 
        Zero, 
        Zero
    })
    Method (PTS, 1, NotSerialized)
    {
        If (Arg0)
        {
            \_SB.PCI0.SBRG.SPTS (Arg0)
            \_SB.PCI0.PEX0.SPRT (Arg0)
            \_SB.PCI0.PEX1.SPRT (Arg0)
            \_SB.PCI0.PEX2.SPRT (Arg0)
            \_SB.PCI0.PEX3.SPRT (Arg0)
            \_SB.PCI0.PEX4.SPRT (Arg0)
            \_SB.PCI0.PEX5.SPRT (Arg0)
            \_SB.PCI0.PEX6.SPRT (Arg0)
            \_SB.PCI0.PEX7.SPRT (Arg0)
            \_SB.PCI0.SBRG.SIOS (Arg0)
        }
    }

    Method (WAK, 1, NotSerialized)
    {
        \_SB.PCI0.SBRG.SWAK (Arg0)
        If (\_SB.PCI0.PEX0.PMS)
        {
            \_SB.PCI0.PEX0.WPRT (Arg0)
            Notify (\_SB.PCI0.PEX0, 0x02)
        }
        Else
        {
            \_SB.PCI0.PEX0.WPRT (Arg0)
        }

        If (\_SB.PCI0.PEX1.PMS)
        {
            \_SB.PCI0.PEX1.WPRT (Arg0)
            Notify (\_SB.PCI0.PEX1, 0x02)
        }
        Else
        {
            \_SB.PCI0.PEX1.WPRT (Arg0)
        }

        If (\_SB.PCI0.PEX2.PMS)
        {
            \_SB.PCI0.PEX2.WPRT (Arg0)
            Notify (\_SB.PCI0.PEX2, 0x02)
        }
        Else
        {
            \_SB.PCI0.PEX2.WPRT (Arg0)
        }

        If (\_SB.PCI0.PEX3.PMS)
        {
            \_SB.PCI0.PEX3.WPRT (Arg0)
            Notify (\_SB.PCI0.PEX3, 0x02)
        }
        Else
        {
            \_SB.PCI0.PEX3.WPRT (Arg0)
        }

        If (\_SB.PCI0.PEX4.PMS)
        {
            \_SB.PCI0.PEX4.WPRT (Arg0)
            Notify (\_SB.PCI0.PEX4, 0x02)
        }
        Else
        {
            \_SB.PCI0.PEX4.WPRT (Arg0)
        }

        If (\_SB.PCI0.PEX5.PMS)
        {
            \_SB.PCI0.PEX5.WPRT (Arg0)
            Notify (\_SB.PCI0.PEX5, 0x02)
        }
        Else
        {
            \_SB.PCI0.PEX5.WPRT (Arg0)
        }

        If (\_SB.PCI0.PEX6.PMS)
        {
            \_SB.PCI0.PEX6.WPRT (Arg0)
            Notify (\_SB.PCI0.PEX6, 0x02)
        }
        Else
        {
            \_SB.PCI0.PEX6.WPRT (Arg0)
        }

        If (\_SB.PCI0.PEX7.PMS)
        {
            \_SB.PCI0.PEX7.WPRT (Arg0)
            Notify (\_SB.PCI0.PEX7, 0x02)
        }
        Else
        {
            \_SB.PCI0.PEX7.WPRT (Arg0)
        }

        \_SB.PCI0.SBRG.SIOW (Arg0)
    }

    Debug = "hdef0-add_dsdt/HDEF-1.txt_v2.0 dsdt edits, github.com/toleda"
}

