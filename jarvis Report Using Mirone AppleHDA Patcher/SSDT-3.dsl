/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160422-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of /var/folders/2s/prhmy3g969ncjp3wd624pr0m0000gn/T/017F62D7-4CF0-4364-AECB-C99702A06B77-1527-000003C9AA5C5EFB/SSDT-3.aml, Sat Sep 22 21:18:23 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000FF5 (4085)
 *     Revision         0x01
 *     Checksum         0x07
 *     OEM ID           "PmRef"
 *     OEM Table ID     "CpuPm"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20120320 (538051360)
 */
DefinitionBlock ("", "SSDT", 1, "PmRef", "CpuPm", 0x00003000)
{
    External (_SB_.SCK0.C000, DeviceObj)    // Warning: Unknown object
    External (_SB_.SCK0.C001, DeviceObj)    // Warning: Unknown object
    External (_SB_.SCK0.C002, DeviceObj)    // Warning: Unknown object
    External (_SB_.SCK0.C003, DeviceObj)    // Warning: Unknown object
    External (_SB_.SCK0.C004, DeviceObj)    // Warning: Unknown object
    External (_SB_.SCK0.C005, DeviceObj)    // Warning: Unknown object
    External (_SB_.SCK0.C006, DeviceObj)    // Warning: Unknown object
    External (_SB_.SCK0.C007, DeviceObj)    // Warning: Unknown object
    External (_SB_.SCK0.C008, DeviceObj)    // Warning: Unknown object
    External (_SB_.SCK0.C009, DeviceObj)    // Warning: Unknown object
    External (_SB_.SCK0.C00A, DeviceObj)    // Warning: Unknown object
    External (_SB_.SCK0.C00B, DeviceObj)    // Warning: Unknown object
    External (_SB_.SCK0.C00C, DeviceObj)    // Warning: Unknown object
    External (_SB_.SCK0.C00D, DeviceObj)    // Warning: Unknown object
    External (_SB_.SCK0.C00E, DeviceObj)    // Warning: Unknown object
    External (_SB_.SCK0.C00F, DeviceObj)    // Warning: Unknown object
    External (_SB_.SCK0.C010, DeviceObj)    // Warning: Unknown object
    External (_SB_.SCK0.C011, DeviceObj)    // Warning: Unknown object
    External (_SB_.SCK0.C012, DeviceObj)    // Warning: Unknown object
    External (_SB_.SCK0.C013, DeviceObj)    // Warning: Unknown object
    External (_SB_.SCK0.C014, DeviceObj)    // Warning: Unknown object
    External (_SB_.SCK0.C015, DeviceObj)    // Warning: Unknown object
    External (_SB_.SCK0.C016, DeviceObj)    // Warning: Unknown object
    External (_SB_.SCK0.C017, DeviceObj)    // Warning: Unknown object
    External (_SB_.SCK0.C018, DeviceObj)    // Warning: Unknown object
    External (_SB_.SCK0.C019, DeviceObj)    // Warning: Unknown object
    External (_SB_.SCK0.C01A, DeviceObj)    // Warning: Unknown object
    External (_SB_.SCK0.C01B, DeviceObj)    // Warning: Unknown object
    External (_SB_.SCK0.C01C, DeviceObj)    // Warning: Unknown object
    External (_SB_.SCK0.C01D, DeviceObj)    // Warning: Unknown object
    External (_SB_.SCK0.C100, DeviceObj)    // Warning: Unknown object
    External (_SB_.SCK0.C101, DeviceObj)    // Warning: Unknown object

    Scope (\_SB.SCK0.C000)
    {
        Name (PSS, Package (0x19)
        {
            Package (0x06)
            {
                0x00000E10, 
                0x00007080, 
                0x0000000A, 
                0x0000000A, 
                0x00002400, 
                0x00002400
            }, 

            Package (0x06)
            {
                0x00000DAC, 
                0x00006D60, 
                0x0000000A, 
                0x0000000A, 
                0x00002300, 
                0x00002300
            }, 

            Package (0x06)
            {
                0x00000D48, 
                0x00006A40, 
                0x0000000A, 
                0x0000000A, 
                0x00002200, 
                0x00002200
            }, 

            Package (0x06)
            {
                0x00000CE4, 
                0x00006720, 
                0x0000000A, 
                0x0000000A, 
                0x00002100, 
                0x00002100
            }, 

            Package (0x06)
            {
                0x00000C80, 
                0x00006400, 
                0x0000000A, 
                0x0000000A, 
                0x00002000, 
                0x00002000
            }, 

            Package (0x06)
            {
                0x00000C1C, 
                0x000060E0, 
                0x0000000A, 
                0x0000000A, 
                0x00001F00, 
                0x00001F00
            }, 

            Package (0x06)
            {
                0x00000BB8, 
                0x00005DC0, 
                0x0000000A, 
                0x0000000A, 
                0x00001E00, 
                0x00001E00
            }, 

            Package (0x06)
            {
                0x00000B54, 
                0x00005AA0, 
                0x0000000A, 
                0x0000000A, 
                0x00001D00, 
                0x00001D00
            }, 

            Package (0x06)
            {
                0x00000AF0, 
                0x00005780, 
                0x0000000A, 
                0x0000000A, 
                0x00001C00, 
                0x00001C00
            }, 

            Package (0x06)
            {
                0x00000A8C, 
                0x00005460, 
                0x0000000A, 
                0x0000000A, 
                0x00001B00, 
                0x00001B00
            }, 

            Package (0x06)
            {
                0x00000A28, 
                0x00005140, 
                0x0000000A, 
                0x0000000A, 
                0x00001A00, 
                0x00001A00
            }, 

            Package (0x06)
            {
                0x000009C4, 
                0x00004E20, 
                0x0000000A, 
                0x0000000A, 
                0x00001900, 
                0x00001900
            }, 

            Package (0x06)
            {
                0x00000960, 
                0x00004B00, 
                0x0000000A, 
                0x0000000A, 
                0x00001800, 
                0x00001800
            }, 

            Package (0x06)
            {
                0x000008FC, 
                0x000047E0, 
                0x0000000A, 
                0x0000000A, 
                0x00001700, 
                0x00001700
            }, 

            Package (0x06)
            {
                0x00000898, 
                0x000044C0, 
                0x0000000A, 
                0x0000000A, 
                0x00001600, 
                0x00001600
            }, 

            Package (0x06)
            {
                0x00000834, 
                0x000041A0, 
                0x0000000A, 
                0x0000000A, 
                0x00001500, 
                0x00001500
            }, 

            Package (0x06)
            {
                0x000007D0, 
                0x00003E80, 
                0x0000000A, 
                0x0000000A, 
                0x00001400, 
                0x00001400
            }, 

            Package (0x06)
            {
                0x0000076C, 
                0x00003B60, 
                0x0000000A, 
                0x0000000A, 
                0x00001300, 
                0x00001300
            }, 

            Package (0x06)
            {
                0x00000708, 
                0x00003840, 
                0x0000000A, 
                0x0000000A, 
                0x00001200, 
                0x00001200
            }, 

            Package (0x06)
            {
                0x000006A4, 
                0x00003520, 
                0x0000000A, 
                0x0000000A, 
                0x00001100, 
                0x00001100
            }, 

            Package (0x06)
            {
                0x00000640, 
                0x00003200, 
                0x0000000A, 
                0x0000000A, 
                0x00001000, 
                0x00001000
            }, 

            Package (0x06)
            {
                0x000005DC, 
                0x00002EE0, 
                0x0000000A, 
                0x0000000A, 
                0x00000F00, 
                0x00000F00
            }, 

            Package (0x06)
            {
                0x00000578, 
                0x00002BC0, 
                0x0000000A, 
                0x0000000A, 
                0x00000E00, 
                0x00000E00
            }, 

            Package (0x06)
            {
                0x00000514, 
                0x000028A0, 
                0x0000000A, 
                0x0000000A, 
                0x00000D00, 
                0x00000D00
            }, 

            Package (0x06)
            {
                0x000004B0, 
                0x00002580, 
                0x0000000A, 
                0x0000000A, 
                0x00000C00, 
                0x00000C00
            }
        })
        Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
        {
            Return (PSS)
        }

        Name (_PPC, Zero)  // _PPC: Performance Present Capabilities
        Name (PCT, Package (0x02)
        {
            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x00,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000000, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x00,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000000, // Address
                    ,)
            }
        })
        Method (_PCT, 0, NotSerialized)  // _PCT: Performance Control
        {
            Return (PCT)
        }

        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If (Arg2 == Zero)
            {
                Return (Buffer (One)
                {
                     0x03                                           
                })
            }

            Return (Package (0x02)
            {
                "plugin-type", 
                One
            })
        }

        Name (APSN, 0x08)
        Name (APLF, Zero)
    }

    Scope (\_SB.SCK0.C001)
    {
        Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
        {
            Return (\_SB.SCK0.C000.PSS)
        }

        Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
        {
            Return (\_SB.SCK0.C000._PPC)
        }

        Method (_PCT, 0, NotSerialized)  // _PCT: Performance Control
        {
            Return (\_SB.SCK0.C000.PCT)
        }
    }

    Scope (\_SB.SCK0.C002)
    {
        Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
        {
            Return (\_SB.SCK0.C000.PSS)
        }

        Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
        {
            Return (\_SB.SCK0.C000._PPC)
        }

        Method (_PCT, 0, NotSerialized)  // _PCT: Performance Control
        {
            Return (\_SB.SCK0.C000.PCT)
        }
    }

    Scope (\_SB.SCK0.C003)
    {
        Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
        {
            Return (\_SB.SCK0.C000.PSS)
        }

        Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
        {
            Return (\_SB.SCK0.C000._PPC)
        }

        Method (_PCT, 0, NotSerialized)  // _PCT: Performance Control
        {
            Return (\_SB.SCK0.C000.PCT)
        }
    }

    Scope (\_SB.SCK0.C004)
    {
        Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
        {
            Return (\_SB.SCK0.C000.PSS)
        }

        Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
        {
            Return (\_SB.SCK0.C000._PPC)
        }

        Method (_PCT, 0, NotSerialized)  // _PCT: Performance Control
        {
            Return (\_SB.SCK0.C000.PCT)
        }
    }

    Scope (\_SB.SCK0.C005)
    {
        Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
        {
            Return (\_SB.SCK0.C000.PSS)
        }

        Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
        {
            Return (\_SB.SCK0.C000._PPC)
        }

        Method (_PCT, 0, NotSerialized)  // _PCT: Performance Control
        {
            Return (\_SB.SCK0.C000.PCT)
        }
    }

    Scope (\_SB.SCK0.C006)
    {
        Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
        {
            Return (\_SB.SCK0.C000.PSS)
        }

        Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
        {
            Return (\_SB.SCK0.C000._PPC)
        }

        Method (_PCT, 0, NotSerialized)  // _PCT: Performance Control
        {
            Return (\_SB.SCK0.C000.PCT)
        }
    }

    Scope (\_SB.SCK0.C007)
    {
        Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
        {
            Return (\_SB.SCK0.C000.PSS)
        }

        Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
        {
            Return (\_SB.SCK0.C000._PPC)
        }

        Method (_PCT, 0, NotSerialized)  // _PCT: Performance Control
        {
            Return (\_SB.SCK0.C000.PCT)
        }
    }

    Scope (\_SB.SCK0.C008)
    {
        Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
        {
            Return (\_SB.SCK0.C000.PSS)
        }

        Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
        {
            Return (\_SB.SCK0.C000._PPC)
        }

        Method (_PCT, 0, NotSerialized)  // _PCT: Performance Control
        {
            Return (\_SB.SCK0.C000.PCT)
        }
    }

    Scope (\_SB.SCK0.C009)
    {
        Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
        {
            Return (\_SB.SCK0.C000.PSS)
        }

        Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
        {
            Return (\_SB.SCK0.C000._PPC)
        }

        Method (_PCT, 0, NotSerialized)  // _PCT: Performance Control
        {
            Return (\_SB.SCK0.C000.PCT)
        }
    }

    Scope (\_SB.SCK0.C00A)
    {
        Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
        {
            Return (\_SB.SCK0.C000.PSS)
        }

        Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
        {
            Return (\_SB.SCK0.C000._PPC)
        }

        Method (_PCT, 0, NotSerialized)  // _PCT: Performance Control
        {
            Return (\_SB.SCK0.C000.PCT)
        }
    }

    Scope (\_SB.SCK0.C00B)
    {
        Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
        {
            Return (\_SB.SCK0.C000.PSS)
        }

        Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
        {
            Return (\_SB.SCK0.C000._PPC)
        }

        Method (_PCT, 0, NotSerialized)  // _PCT: Performance Control
        {
            Return (\_SB.SCK0.C000.PCT)
        }
    }

    Scope (\_SB.SCK0.C00C)
    {
        Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
        {
            Return (\_SB.SCK0.C000.PSS)
        }

        Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
        {
            Return (\_SB.SCK0.C000._PPC)
        }

        Method (_PCT, 0, NotSerialized)  // _PCT: Performance Control
        {
            Return (\_SB.SCK0.C000.PCT)
        }
    }

    Scope (\_SB.SCK0.C00D)
    {
        Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
        {
            Return (\_SB.SCK0.C000.PSS)
        }

        Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
        {
            Return (\_SB.SCK0.C000._PPC)
        }

        Method (_PCT, 0, NotSerialized)  // _PCT: Performance Control
        {
            Return (\_SB.SCK0.C000.PCT)
        }
    }

    Scope (\_SB.SCK0.C00E)
    {
        Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
        {
            Return (\_SB.SCK0.C000.PSS)
        }

        Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
        {
            Return (\_SB.SCK0.C000._PPC)
        }

        Method (_PCT, 0, NotSerialized)  // _PCT: Performance Control
        {
            Return (\_SB.SCK0.C000.PCT)
        }
    }

    Scope (\_SB.SCK0.C00F)
    {
        Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
        {
            Return (\_SB.SCK0.C000.PSS)
        }

        Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
        {
            Return (\_SB.SCK0.C000._PPC)
        }

        Method (_PCT, 0, NotSerialized)  // _PCT: Performance Control
        {
            Return (\_SB.SCK0.C000.PCT)
        }
    }

    Scope (\_SB.SCK0.C010)
    {
        Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
        {
            Return (\_SB.SCK0.C000.PSS)
        }

        Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
        {
            Return (\_SB.SCK0.C000._PPC)
        }

        Method (_PCT, 0, NotSerialized)  // _PCT: Performance Control
        {
            Return (\_SB.SCK0.C000.PCT)
        }
    }

    Scope (\_SB.SCK0.C011)
    {
        Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
        {
            Return (\_SB.SCK0.C000.PSS)
        }

        Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
        {
            Return (\_SB.SCK0.C000._PPC)
        }

        Method (_PCT, 0, NotSerialized)  // _PCT: Performance Control
        {
            Return (\_SB.SCK0.C000.PCT)
        }
    }

    Scope (\_SB.SCK0.C012)
    {
        Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
        {
            Return (\_SB.SCK0.C000.PSS)
        }

        Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
        {
            Return (\_SB.SCK0.C000._PPC)
        }

        Method (_PCT, 0, NotSerialized)  // _PCT: Performance Control
        {
            Return (\_SB.SCK0.C000.PCT)
        }
    }

    Scope (\_SB.SCK0.C013)
    {
        Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
        {
            Return (\_SB.SCK0.C000.PSS)
        }

        Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
        {
            Return (\_SB.SCK0.C000._PPC)
        }

        Method (_PCT, 0, NotSerialized)  // _PCT: Performance Control
        {
            Return (\_SB.SCK0.C000.PCT)
        }
    }

    Scope (\_SB.SCK0.C014)
    {
        Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
        {
            Return (\_SB.SCK0.C000.PSS)
        }

        Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
        {
            Return (\_SB.SCK0.C000._PPC)
        }

        Method (_PCT, 0, NotSerialized)  // _PCT: Performance Control
        {
            Return (\_SB.SCK0.C000.PCT)
        }
    }

    Scope (\_SB.SCK0.C015)
    {
        Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
        {
            Return (\_SB.SCK0.C000.PSS)
        }

        Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
        {
            Return (\_SB.SCK0.C000._PPC)
        }

        Method (_PCT, 0, NotSerialized)  // _PCT: Performance Control
        {
            Return (\_SB.SCK0.C000.PCT)
        }
    }

    Scope (\_SB.SCK0.C016)
    {
        Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
        {
            Return (\_SB.SCK0.C000.PSS)
        }

        Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
        {
            Return (\_SB.SCK0.C000._PPC)
        }

        Method (_PCT, 0, NotSerialized)  // _PCT: Performance Control
        {
            Return (\_SB.SCK0.C000.PCT)
        }
    }

    Scope (\_SB.SCK0.C017)
    {
        Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
        {
            Return (\_SB.SCK0.C000.PSS)
        }

        Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
        {
            Return (\_SB.SCK0.C000._PPC)
        }

        Method (_PCT, 0, NotSerialized)  // _PCT: Performance Control
        {
            Return (\_SB.SCK0.C000.PCT)
        }
    }

    Scope (\_SB.SCK0.C018)
    {
        Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
        {
            Return (\_SB.SCK0.C000.PSS)
        }

        Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
        {
            Return (\_SB.SCK0.C000._PPC)
        }

        Method (_PCT, 0, NotSerialized)  // _PCT: Performance Control
        {
            Return (\_SB.SCK0.C000.PCT)
        }
    }

    Scope (\_SB.SCK0.C019)
    {
        Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
        {
            Return (\_SB.SCK0.C000.PSS)
        }

        Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
        {
            Return (\_SB.SCK0.C000._PPC)
        }

        Method (_PCT, 0, NotSerialized)  // _PCT: Performance Control
        {
            Return (\_SB.SCK0.C000.PCT)
        }
    }

    Scope (\_SB.SCK0.C01A)
    {
        Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
        {
            Return (\_SB.SCK0.C000.PSS)
        }

        Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
        {
            Return (\_SB.SCK0.C000._PPC)
        }

        Method (_PCT, 0, NotSerialized)  // _PCT: Performance Control
        {
            Return (\_SB.SCK0.C000.PCT)
        }
    }

    Scope (\_SB.SCK0.C01B)
    {
        Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
        {
            Return (\_SB.SCK0.C000.PSS)
        }

        Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
        {
            Return (\_SB.SCK0.C000._PPC)
        }

        Method (_PCT, 0, NotSerialized)  // _PCT: Performance Control
        {
            Return (\_SB.SCK0.C000.PCT)
        }
    }

    Scope (\_SB.SCK0.C01C)
    {
        Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
        {
            Return (\_SB.SCK0.C000.PSS)
        }

        Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
        {
            Return (\_SB.SCK0.C000._PPC)
        }

        Method (_PCT, 0, NotSerialized)  // _PCT: Performance Control
        {
            Return (\_SB.SCK0.C000.PCT)
        }
    }

    Scope (\_SB.SCK0.C01D)
    {
        Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
        {
            Return (\_SB.SCK0.C000.PSS)
        }

        Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
        {
            Return (\_SB.SCK0.C000._PPC)
        }

        Method (_PCT, 0, NotSerialized)  // _PCT: Performance Control
        {
            Return (\_SB.SCK0.C000.PCT)
        }
    }

    Scope (\_SB.SCK0.C100)
    {
        Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
        {
            Return (\_SB.SCK0.C000.PSS)
        }

        Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
        {
            Return (\_SB.SCK0.C000._PPC)
        }

        Method (_PCT, 0, NotSerialized)  // _PCT: Performance Control
        {
            Return (\_SB.SCK0.C000.PCT)
        }
    }

    Scope (\_SB.SCK0.C101)
    {
        Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
        {
            Return (\_SB.SCK0.C000.PSS)
        }

        Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
        {
            Return (\_SB.SCK0.C000._PPC)
        }

        Method (_PCT, 0, NotSerialized)  // _PCT: Performance Control
        {
            Return (\_SB.SCK0.C000.PCT)
        }
    }
}

