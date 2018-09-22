/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160422-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of /var/folders/2s/prhmy3g969ncjp3wd624pr0m0000gn/T/017F62D7-4CF0-4364-AECB-C99702A06B77-1527-000003C9AA5C5EFB/SSDT-4.aml, Sat Sep 22 21:18:23 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000606 (1542)
 *     Revision         0x01
 *     Checksum         0x29
 *     OEM ID           "PmRefA"
 *     OEM Table ID     "CpuCst"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20120320 (538051360)
 */
DefinitionBlock ("", "SSDT", 1, "PmRefA", "CpuCst", 0x00003000)
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
        Name (CST, Package (0x04)
        {
            0x03, 
            Package (0x04)
            {
                ResourceTemplate ()
                {
                    Register (FFixedHW, 
                        0x01,               // Bit Width
                        0x02,               // Bit Offset
                        0x0000000000000000, // Address
                        0x01,               // Access Size
                        )
                }, 

                One, 
                0x0001, 
                0x000003E8
            }, 

            Package (0x04)
            {
                ResourceTemplate ()
                {
                    Register (FFixedHW, 
                        0x01,               // Bit Width
                        0x02,               // Bit Offset
                        0x0000000000000020, // Address
                        0x03,               // Access Size
                        )
                }, 

                0x03, 
                0x00FA, 
                0x000001F4
            }, 

            Package (0x04)
            {
                ResourceTemplate ()
                {
                    Register (FFixedHW, 
                        0x01,               // Bit Width
                        0x02,               // Bit Offset
                        0x0000000000000020, // Address
                        0x03,               // Access Size
                        )
                }, 

                0x06, 
                0x00FD, 
                0x0000015E
            }
        })
        Method (_CST, 0, NotSerialized)  // _CST: C-States
        {
            Return (CST)
        }
    }

    Scope (\_SB.SCK0.C001)
    {
        Method (_CST, 0, NotSerialized)  // _CST: C-States
        {
            Return (\_SB.SCK0.C000.CST)
        }
    }

    Scope (\_SB.SCK0.C002)
    {
        Method (_CST, 0, NotSerialized)  // _CST: C-States
        {
            Return (\_SB.SCK0.C000.CST)
        }
    }

    Scope (\_SB.SCK0.C003)
    {
        Method (_CST, 0, NotSerialized)  // _CST: C-States
        {
            Return (\_SB.SCK0.C000.CST)
        }
    }

    Scope (\_SB.SCK0.C004)
    {
        Method (_CST, 0, NotSerialized)  // _CST: C-States
        {
            Return (\_SB.SCK0.C000.CST)
        }
    }

    Scope (\_SB.SCK0.C005)
    {
        Method (_CST, 0, NotSerialized)  // _CST: C-States
        {
            Return (\_SB.SCK0.C000.CST)
        }
    }

    Scope (\_SB.SCK0.C006)
    {
        Method (_CST, 0, NotSerialized)  // _CST: C-States
        {
            Return (\_SB.SCK0.C000.CST)
        }
    }

    Scope (\_SB.SCK0.C007)
    {
        Method (_CST, 0, NotSerialized)  // _CST: C-States
        {
            Return (\_SB.SCK0.C000.CST)
        }
    }

    Scope (\_SB.SCK0.C008)
    {
        Method (_CST, 0, NotSerialized)  // _CST: C-States
        {
            Return (\_SB.SCK0.C000.CST)
        }
    }

    Scope (\_SB.SCK0.C009)
    {
        Method (_CST, 0, NotSerialized)  // _CST: C-States
        {
            Return (\_SB.SCK0.C000.CST)
        }
    }

    Scope (\_SB.SCK0.C00A)
    {
        Method (_CST, 0, NotSerialized)  // _CST: C-States
        {
            Return (\_SB.SCK0.C000.CST)
        }
    }

    Scope (\_SB.SCK0.C00B)
    {
        Method (_CST, 0, NotSerialized)  // _CST: C-States
        {
            Return (\_SB.SCK0.C000.CST)
        }
    }

    Scope (\_SB.SCK0.C00C)
    {
        Method (_CST, 0, NotSerialized)  // _CST: C-States
        {
            Return (\_SB.SCK0.C000.CST)
        }
    }

    Scope (\_SB.SCK0.C00D)
    {
        Method (_CST, 0, NotSerialized)  // _CST: C-States
        {
            Return (\_SB.SCK0.C000.CST)
        }
    }

    Scope (\_SB.SCK0.C00E)
    {
        Method (_CST, 0, NotSerialized)  // _CST: C-States
        {
            Return (\_SB.SCK0.C000.CST)
        }
    }

    Scope (\_SB.SCK0.C00F)
    {
        Method (_CST, 0, NotSerialized)  // _CST: C-States
        {
            Return (\_SB.SCK0.C000.CST)
        }
    }

    Scope (\_SB.SCK0.C010)
    {
        Method (_CST, 0, NotSerialized)  // _CST: C-States
        {
            Return (\_SB.SCK0.C000.CST)
        }
    }

    Scope (\_SB.SCK0.C011)
    {
        Method (_CST, 0, NotSerialized)  // _CST: C-States
        {
            Return (\_SB.SCK0.C000.CST)
        }
    }

    Scope (\_SB.SCK0.C012)
    {
        Method (_CST, 0, NotSerialized)  // _CST: C-States
        {
            Return (\_SB.SCK0.C000.CST)
        }
    }

    Scope (\_SB.SCK0.C013)
    {
        Method (_CST, 0, NotSerialized)  // _CST: C-States
        {
            Return (\_SB.SCK0.C000.CST)
        }
    }

    Scope (\_SB.SCK0.C014)
    {
        Method (_CST, 0, NotSerialized)  // _CST: C-States
        {
            Return (\_SB.SCK0.C000.CST)
        }
    }

    Scope (\_SB.SCK0.C015)
    {
        Method (_CST, 0, NotSerialized)  // _CST: C-States
        {
            Return (\_SB.SCK0.C000.CST)
        }
    }

    Scope (\_SB.SCK0.C016)
    {
        Method (_CST, 0, NotSerialized)  // _CST: C-States
        {
            Return (\_SB.SCK0.C000.CST)
        }
    }

    Scope (\_SB.SCK0.C017)
    {
        Method (_CST, 0, NotSerialized)  // _CST: C-States
        {
            Return (\_SB.SCK0.C000.CST)
        }
    }

    Scope (\_SB.SCK0.C018)
    {
        Method (_CST, 0, NotSerialized)  // _CST: C-States
        {
            Return (\_SB.SCK0.C000.CST)
        }
    }

    Scope (\_SB.SCK0.C019)
    {
        Method (_CST, 0, NotSerialized)  // _CST: C-States
        {
            Return (\_SB.SCK0.C000.CST)
        }
    }

    Scope (\_SB.SCK0.C01A)
    {
        Method (_CST, 0, NotSerialized)  // _CST: C-States
        {
            Return (\_SB.SCK0.C000.CST)
        }
    }

    Scope (\_SB.SCK0.C01B)
    {
        Method (_CST, 0, NotSerialized)  // _CST: C-States
        {
            Return (\_SB.SCK0.C000.CST)
        }
    }

    Scope (\_SB.SCK0.C01C)
    {
        Method (_CST, 0, NotSerialized)  // _CST: C-States
        {
            Return (\_SB.SCK0.C000.CST)
        }
    }

    Scope (\_SB.SCK0.C01D)
    {
        Method (_CST, 0, NotSerialized)  // _CST: C-States
        {
            Return (\_SB.SCK0.C000.CST)
        }
    }

    Scope (\_SB.SCK0.C100)
    {
        Method (_CST, 0, NotSerialized)  // _CST: C-States
        {
            Return (\_SB.SCK0.C000.CST)
        }
    }

    Scope (\_SB.SCK0.C101)
    {
        Method (_CST, 0, NotSerialized)  // _CST: C-States
        {
            Return (\_SB.SCK0.C000.CST)
        }
    }
}

