/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160422-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of /var/folders/2s/prhmy3g969ncjp3wd624pr0m0000gn/T/017F62D7-4CF0-4364-AECB-C99702A06B77-1527-000003C9AA5C5EFB/SSDT-2.aml, Sat Sep 22 21:18:23 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00001D03 (7427)
 *     Revision         0x01
 *     Checksum         0xE1
 *     OEM ID           "APPLE "
 *     OEM Table ID     "CpuPm"
 *     OEM Revision     0x00015600 (87552)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20161210 (538317328)
 */
DefinitionBlock ("", "SSDT", 1, "APPLE ", "CpuPm", 0x00015600)
{
    External (_SB_.SCK0.C000, DeviceObj)    // (from opcode)
    External (_SB_.SCK0.C001, DeviceObj)    // (from opcode)
    External (_SB_.SCK0.C002, DeviceObj)    // (from opcode)
    External (_SB_.SCK0.C003, DeviceObj)    // (from opcode)
    External (_SB_.SCK0.C004, DeviceObj)    // (from opcode)
    External (_SB_.SCK0.C005, DeviceObj)    // (from opcode)
    External (_SB_.SCK0.C006, DeviceObj)    // (from opcode)
    External (_SB_.SCK0.C007, DeviceObj)    // (from opcode)
    External (_SB_.SCK0.C008, DeviceObj)    // (from opcode)
    External (_SB_.SCK0.C009, DeviceObj)    // (from opcode)
    External (_SB_.SCK0.C00A, DeviceObj)    // (from opcode)
    External (_SB_.SCK0.C00B, DeviceObj)    // (from opcode)
    External (_SB_.SCK0.C00C, DeviceObj)    // (from opcode)
    External (_SB_.SCK0.C00D, DeviceObj)    // (from opcode)
    External (_SB_.SCK0.C00E, DeviceObj)    // (from opcode)
    External (_SB_.SCK0.C00F, DeviceObj)    // (from opcode)
    External (_SB_.SCK0.C010, DeviceObj)    // (from opcode)
    External (_SB_.SCK0.C011, DeviceObj)    // (from opcode)
    External (_SB_.SCK0.C012, DeviceObj)    // (from opcode)
    External (_SB_.SCK0.C013, DeviceObj)    // (from opcode)
    External (_SB_.SCK1.C100, DeviceObj)    // (from opcode)
    External (_SB_.SCK1.C101, DeviceObj)    // (from opcode)
    External (_SB_.SCK1.C102, DeviceObj)    // (from opcode)
    External (_SB_.SCK1.C103, DeviceObj)    // (from opcode)
    External (_SB_.SCK1.C104, DeviceObj)    // (from opcode)
    External (_SB_.SCK1.C105, DeviceObj)    // (from opcode)
    External (_SB_.SCK1.C106, DeviceObj)    // (from opcode)
    External (_SB_.SCK1.C107, DeviceObj)    // (from opcode)
    External (_SB_.SCK1.C108, DeviceObj)    // (from opcode)
    External (_SB_.SCK1.C109, DeviceObj)    // (from opcode)
    External (_SB_.SCK1.C10A, DeviceObj)    // (from opcode)
    External (_SB_.SCK1.C10B, DeviceObj)    // (from opcode)
    External (_SB_.SCK1.C10C, DeviceObj)    // (from opcode)
    External (_SB_.SCK1.C10D, DeviceObj)    // (from opcode)
    External (_SB_.SCK1.C10E, DeviceObj)    // (from opcode)
    External (_SB_.SCK1.C10F, DeviceObj)    // (from opcode)
    External (_SB_.SCK1.C110, DeviceObj)    // (from opcode)
    External (_SB_.SCK1.C111, DeviceObj)    // (from opcode)
    External (_SB_.SCK1.C112, DeviceObj)    // (from opcode)
    External (_SB_.SCK1.C113, DeviceObj)    // (from opcode)

    Scope (\_SB.SCK0.C000)
    {
        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            Debug = "ssdtPRGen version....: 15.6 / Mac OS X 10.13.3 (17D47)"
            Debug = "target processor.....: E5-2680 v2"
            Debug = "running processor....: Intel(R) Xeon(R) CPU E5-2680 v2 @ 2.80GHz"
            Debug = "baseFrequency........: 1200"
            Debug = "frequency............: 2800"
            Debug = "busFrequency.........: 100"
            Debug = "logicalCPUs..........: 40"
            Debug = "maximum TDP..........: 115"
            Debug = "packageLength........: 25"
            Debug = "turboStates..........: 8"
            Debug = "maxTurboFrequency....: 3600"
            Debug = "IvyWorkArounds.......: 3"
            Debug = "machdep.xcpm.mode....: 0"
            Debug = "number of ACPI scopes: 2"
        }

        Name (APLF, 0x04)
        Name (APSN, 0x09)
        Name (APSS, Package (0x1E)
        {
            Package (0x06)
            {
                0x0E11, 
                0x0001C138, 
                0x0A, 
                0x0A, 
                0x2500, 
                0x2500
            }, 

            Package (0x06)
            {
                0x0E10, 
                0x0001C138, 
                0x0A, 
                0x0A, 
                0x2400, 
                0x2400
            }, 

            Package (0x06)
            {
                0x0DAC, 
                0x0001C138, 
                0x0A, 
                0x0A, 
                0x2300, 
                0x2300
            }, 

            Package (0x06)
            {
                0x0D48, 
                0x0001C138, 
                0x0A, 
                0x0A, 
                0x2200, 
                0x2200
            }, 

            Package (0x06)
            {
                0x0CE4, 
                0x0001C138, 
                0x0A, 
                0x0A, 
                0x2100, 
                0x2100
            }, 

            Package (0x06)
            {
                0x0C80, 
                0x0001C138, 
                0x0A, 
                0x0A, 
                0x2000, 
                0x2000
            }, 

            Package (0x06)
            {
                0x0C1C, 
                0x0001C138, 
                0x0A, 
                0x0A, 
                0x1F00, 
                0x1F00
            }, 

            Package (0x06)
            {
                0x0BB8, 
                0x0001C138, 
                0x0A, 
                0x0A, 
                0x1E00, 
                0x1E00
            }, 

            Package (0x06)
            {
                0x0B54, 
                0x0001C138, 
                0x0A, 
                0x0A, 
                0x1D00, 
                0x1D00
            }, 

            Package (0x06)
            {
                0x0AF0, 
                0x0001C138, 
                0x0A, 
                0x0A, 
                0x1C00, 
                0x1C00
            }, 

            Package (0x06)
            {
                0x0A8C, 
                0x0001AC44, 
                0x0A, 
                0x0A, 
                0x1B00, 
                0x1B00
            }, 

            Package (0x06)
            {
                0x0A28, 
                0x000197B4, 
                0x0A, 
                0x0A, 
                0x1A00, 
                0x1A00
            }, 

            Package (0x06)
            {
                0x09C4, 
                0x00018387, 
                0x0A, 
                0x0A, 
                0x1900, 
                0x1900
            }, 

            Package (0x06)
            {
                0x0960, 
                0x00016FBD, 
                0x0A, 
                0x0A, 
                0x1800, 
                0x1800
            }, 

            Package (0x06)
            {
                0x08FC, 
                0x00015C54, 
                0x0A, 
                0x0A, 
                0x1700, 
                0x1700
            }, 

            Package (0x06)
            {
                0x0898, 
                0x0001494D, 
                0x0A, 
                0x0A, 
                0x1600, 
                0x1600
            }, 

            Package (0x06)
            {
                0x0834, 
                0x000136A5, 
                0x0A, 
                0x0A, 
                0x1500, 
                0x1500
            }, 

            Package (0x06)
            {
                0x07D0, 
                0x0001245C, 
                0x0A, 
                0x0A, 
                0x1400, 
                0x1400
            }, 

            Package (0x06)
            {
                0x076C, 
                0x00011272, 
                0x0A, 
                0x0A, 
                0x1300, 
                0x1300
            }, 

            Package (0x06)
            {
                0x0708, 
                0x000100E6, 
                0x0A, 
                0x0A, 
                0x1200, 
                0x1200
            }, 

            Package (0x06)
            {
                0x06A4, 
                0xEFB6, 
                0x0A, 
                0x0A, 
                0x1100, 
                0x1100
            }, 

            Package (0x06)
            {
                0x0640, 
                0xDEE2, 
                0x0A, 
                0x0A, 
                0x1000, 
                0x1000
            }, 

            Package (0x06)
            {
                0x05DC, 
                0xCE6A, 
                0x0A, 
                0x0A, 
                0x0F00, 
                0x0F00
            }, 

            Package (0x06)
            {
                0x0578, 
                0xBE4B, 
                0x0A, 
                0x0A, 
                0x0E00, 
                0x0E00
            }, 

            Package (0x06)
            {
                0x0514, 
                0xAE87, 
                0x0A, 
                0x0A, 
                0x0D00, 
                0x0D00
            }, 

            Package (0x06)
            {
                0x04B0, 
                0x9F1B, 
                0x0A, 
                0x0A, 
                0x0C00, 
                0x0C00
            }, 

            Package (0x06)
            {
                0x044C, 
                Zero, 
                0x0A, 
                0x0A, 
                0x0B00, 
                0x0B00
            }, 

            Package (0x06)
            {
                0x03E8, 
                Zero, 
                0x0A, 
                0x0A, 
                0x0A00, 
                0x0A00
            }, 

            Package (0x06)
            {
                0x0384, 
                Zero, 
                0x0A, 
                0x0A, 
                0x0900, 
                0x0900
            }, 

            Package (0x06)
            {
                0x0320, 
                Zero, 
                0x0A, 
                0x0A, 
                0x0800, 
                0x0800
            }
        })
        Method (ACST, 0, NotSerialized)
        {
            Debug = "Method C000.ACST Called"
            Debug = "C000 C-States    : 13"
            Return (Package (0x05)
            {
                One, 
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
                    Zero, 
                    0x03E8
                }, 

                Package (0x04)
                {
                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x01,               // Bit Width
                            0x02,               // Bit Offset
                            0x0000000000000010, // Address
                            0x03,               // Access Size
                            )
                    }, 

                    0x03, 
                    0xCD, 
                    0x01F4
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
                    0xF5, 
                    0x015E
                }
            })
        }

        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            Debug = "Method C000._DSM Called"
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
    }

    Scope (\_SB.SCK0.C001)
    {
        Method (APSS, 0, NotSerialized)
        {
            Debug = "Method _SB_.SCK0.C001.APSS Called"
            Return (\_SB.SCK0.C000.APSS)
        }

        Method (ACST, 0, NotSerialized)
        {
            Debug = "Method C001.ACST Called"
            Debug = "C001 C-States    : 13"
            Return (Package (0x05)
            {
                One, 
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
                    0x03E8, 
                    0x03E8
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
                    0xC6, 
                    0xC8
                }, 

                Package (0x04)
                {
                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x01,               // Bit Width
                            0x02,               // Bit Offset
                            0x0000000000000030, // Address
                            0x03,               // Access Size
                            )
                    }, 

                    0x06, 
                    0xF5, 
                    0x015E
                }
            })
        }
    }

    Scope (\_SB.SCK0.C002)
    {
        Method (APSS, 0, NotSerialized)
        {
            Debug = "Method _SB_.SCK0.C002.APSS Called"
            Return (\_SB.SCK0.C000.APSS)
        }

        Method (ACST, 0, NotSerialized)
        {
            Return (\_SB.SCK0.C001.ACST ())
        }
    }

    Scope (\_SB.SCK0.C003)
    {
        Method (APSS, 0, NotSerialized)
        {
            Debug = "Method _SB_.SCK0.C003.APSS Called"
            Return (\_SB.SCK0.C000.APSS)
        }

        Method (ACST, 0, NotSerialized)
        {
            Return (\_SB.SCK0.C001.ACST ())
        }
    }

    Scope (\_SB.SCK0.C004)
    {
        Method (APSS, 0, NotSerialized)
        {
            Debug = "Method _SB_.SCK0.C004.APSS Called"
            Return (\_SB.SCK0.C000.APSS)
        }

        Method (ACST, 0, NotSerialized)
        {
            Return (\_SB.SCK0.C001.ACST ())
        }
    }

    Scope (\_SB.SCK0.C005)
    {
        Method (APSS, 0, NotSerialized)
        {
            Debug = "Method _SB_.SCK0.C005.APSS Called"
            Return (\_SB.SCK0.C000.APSS)
        }

        Method (ACST, 0, NotSerialized)
        {
            Return (\_SB.SCK0.C001.ACST ())
        }
    }

    Scope (\_SB.SCK0.C006)
    {
        Method (APSS, 0, NotSerialized)
        {
            Debug = "Method _SB_.SCK0.C006.APSS Called"
            Return (\_SB.SCK0.C000.APSS)
        }

        Method (ACST, 0, NotSerialized)
        {
            Return (\_SB.SCK0.C001.ACST ())
        }
    }

    Scope (\_SB.SCK0.C007)
    {
        Method (APSS, 0, NotSerialized)
        {
            Debug = "Method _SB_.SCK0.C007.APSS Called"
            Return (\_SB.SCK0.C000.APSS)
        }

        Method (ACST, 0, NotSerialized)
        {
            Return (\_SB.SCK0.C001.ACST ())
        }
    }

    Scope (\_SB.SCK0.C008)
    {
        Method (APSS, 0, NotSerialized)
        {
            Debug = "Method _SB_.SCK0.C008.APSS Called"
            Return (\_SB.SCK0.C000.APSS)
        }

        Method (ACST, 0, NotSerialized)
        {
            Return (\_SB.SCK0.C001.ACST ())
        }
    }

    Scope (\_SB.SCK0.C009)
    {
        Method (APSS, 0, NotSerialized)
        {
            Debug = "Method _SB_.SCK0.C009.APSS Called"
            Return (\_SB.SCK0.C000.APSS)
        }

        Method (ACST, 0, NotSerialized)
        {
            Return (\_SB.SCK0.C001.ACST ())
        }
    }

    Scope (\_SB.SCK0.C00A)
    {
        Method (APSS, 0, NotSerialized)
        {
            Debug = "Method _SB_.SCK0.C00A.APSS Called"
            Return (\_SB.SCK0.C000.APSS)
        }

        Method (ACST, 0, NotSerialized)
        {
            Return (\_SB.SCK0.C001.ACST ())
        }
    }

    Scope (\_SB.SCK0.C00B)
    {
        Method (APSS, 0, NotSerialized)
        {
            Debug = "Method _SB_.SCK0.C00B.APSS Called"
            Return (\_SB.SCK0.C000.APSS)
        }

        Method (ACST, 0, NotSerialized)
        {
            Return (\_SB.SCK0.C001.ACST ())
        }
    }

    Scope (\_SB.SCK0.C00C)
    {
        Method (APSS, 0, NotSerialized)
        {
            Debug = "Method _SB_.SCK0.C00C.APSS Called"
            Return (\_SB.SCK0.C000.APSS)
        }

        Method (ACST, 0, NotSerialized)
        {
            Return (\_SB.SCK0.C001.ACST ())
        }
    }

    Scope (\_SB.SCK0.C00D)
    {
        Method (APSS, 0, NotSerialized)
        {
            Debug = "Method _SB_.SCK0.C00D.APSS Called"
            Return (\_SB.SCK0.C000.APSS)
        }

        Method (ACST, 0, NotSerialized)
        {
            Return (\_SB.SCK0.C001.ACST ())
        }
    }

    Scope (\_SB.SCK0.C00E)
    {
        Method (APSS, 0, NotSerialized)
        {
            Debug = "Method _SB_.SCK0.C00E.APSS Called"
            Return (\_SB.SCK0.C000.APSS)
        }

        Method (ACST, 0, NotSerialized)
        {
            Return (\_SB.SCK0.C001.ACST ())
        }
    }

    Scope (\_SB.SCK0.C00F)
    {
        Method (APSS, 0, NotSerialized)
        {
            Debug = "Method _SB_.SCK0.C00F.APSS Called"
            Return (\_SB.SCK0.C000.APSS)
        }

        Method (ACST, 0, NotSerialized)
        {
            Return (\_SB.SCK0.C001.ACST ())
        }
    }

    Scope (\_SB.SCK0.C010)
    {
        Method (APSS, 0, NotSerialized)
        {
            Debug = "Method _SB_.SCK0.C010.APSS Called"
            Return (\_SB.SCK0.C000.APSS)
        }

        Method (ACST, 0, NotSerialized)
        {
            Return (\_SB.SCK0.C001.ACST ())
        }
    }

    Scope (\_SB.SCK0.C011)
    {
        Method (APSS, 0, NotSerialized)
        {
            Debug = "Method _SB_.SCK0.C011.APSS Called"
            Return (\_SB.SCK0.C000.APSS)
        }

        Method (ACST, 0, NotSerialized)
        {
            Return (\_SB.SCK0.C001.ACST ())
        }
    }

    Scope (\_SB.SCK0.C012)
    {
        Method (APSS, 0, NotSerialized)
        {
            Debug = "Method _SB_.SCK0.C012.APSS Called"
            Return (\_SB.SCK0.C000.APSS)
        }

        Method (ACST, 0, NotSerialized)
        {
            Return (\_SB.SCK0.C001.ACST ())
        }
    }

    Scope (\_SB.SCK0.C013)
    {
        Method (APSS, 0, NotSerialized)
        {
            Debug = "Method _SB_.SCK0.C013.APSS Called"
            Return (\_SB.SCK0.C000.APSS)
        }

        Method (ACST, 0, NotSerialized)
        {
            Return (\_SB.SCK0.C001.ACST ())
        }
    }

    Scope (\_SB.SCK1.C100)
    {
        Name (APLF, 0x04)
        Name (APSN, 0x09)
        Name (APSS, Package (0x1E)
        {
            Package (0x06)
            {
                0x0E11, 
                0x0001C138, 
                0x0A, 
                0x0A, 
                0x2500, 
                0x2500
            }, 

            Package (0x06)
            {
                0x0E10, 
                0x0001C138, 
                0x0A, 
                0x0A, 
                0x2400, 
                0x2400
            }, 

            Package (0x06)
            {
                0x0DAC, 
                0x0001C138, 
                0x0A, 
                0x0A, 
                0x2300, 
                0x2300
            }, 

            Package (0x06)
            {
                0x0D48, 
                0x0001C138, 
                0x0A, 
                0x0A, 
                0x2200, 
                0x2200
            }, 

            Package (0x06)
            {
                0x0CE4, 
                0x0001C138, 
                0x0A, 
                0x0A, 
                0x2100, 
                0x2100
            }, 

            Package (0x06)
            {
                0x0C80, 
                0x0001C138, 
                0x0A, 
                0x0A, 
                0x2000, 
                0x2000
            }, 

            Package (0x06)
            {
                0x0C1C, 
                0x0001C138, 
                0x0A, 
                0x0A, 
                0x1F00, 
                0x1F00
            }, 

            Package (0x06)
            {
                0x0BB8, 
                0x0001C138, 
                0x0A, 
                0x0A, 
                0x1E00, 
                0x1E00
            }, 

            Package (0x06)
            {
                0x0B54, 
                0x0001C138, 
                0x0A, 
                0x0A, 
                0x1D00, 
                0x1D00
            }, 

            Package (0x06)
            {
                0x0AF0, 
                0x0001C138, 
                0x0A, 
                0x0A, 
                0x1C00, 
                0x1C00
            }, 

            Package (0x06)
            {
                0x0A8C, 
                0x0001AC44, 
                0x0A, 
                0x0A, 
                0x1B00, 
                0x1B00
            }, 

            Package (0x06)
            {
                0x0A28, 
                0x000197B4, 
                0x0A, 
                0x0A, 
                0x1A00, 
                0x1A00
            }, 

            Package (0x06)
            {
                0x09C4, 
                0x00018387, 
                0x0A, 
                0x0A, 
                0x1900, 
                0x1900
            }, 

            Package (0x06)
            {
                0x0960, 
                0x00016FBD, 
                0x0A, 
                0x0A, 
                0x1800, 
                0x1800
            }, 

            Package (0x06)
            {
                0x08FC, 
                0x00015C54, 
                0x0A, 
                0x0A, 
                0x1700, 
                0x1700
            }, 

            Package (0x06)
            {
                0x0898, 
                0x0001494D, 
                0x0A, 
                0x0A, 
                0x1600, 
                0x1600
            }, 

            Package (0x06)
            {
                0x0834, 
                0x000136A5, 
                0x0A, 
                0x0A, 
                0x1500, 
                0x1500
            }, 

            Package (0x06)
            {
                0x07D0, 
                0x0001245C, 
                0x0A, 
                0x0A, 
                0x1400, 
                0x1400
            }, 

            Package (0x06)
            {
                0x076C, 
                0x00011272, 
                0x0A, 
                0x0A, 
                0x1300, 
                0x1300
            }, 

            Package (0x06)
            {
                0x0708, 
                0x000100E6, 
                0x0A, 
                0x0A, 
                0x1200, 
                0x1200
            }, 

            Package (0x06)
            {
                0x06A4, 
                0xEFB6, 
                0x0A, 
                0x0A, 
                0x1100, 
                0x1100
            }, 

            Package (0x06)
            {
                0x0640, 
                0xDEE2, 
                0x0A, 
                0x0A, 
                0x1000, 
                0x1000
            }, 

            Package (0x06)
            {
                0x05DC, 
                0xCE6A, 
                0x0A, 
                0x0A, 
                0x0F00, 
                0x0F00
            }, 

            Package (0x06)
            {
                0x0578, 
                0xBE4B, 
                0x0A, 
                0x0A, 
                0x0E00, 
                0x0E00
            }, 

            Package (0x06)
            {
                0x0514, 
                0xAE87, 
                0x0A, 
                0x0A, 
                0x0D00, 
                0x0D00
            }, 

            Package (0x06)
            {
                0x04B0, 
                0x9F1B, 
                0x0A, 
                0x0A, 
                0x0C00, 
                0x0C00
            }, 

            Package (0x06)
            {
                0x044C, 
                Zero, 
                0x0A, 
                0x0A, 
                0x0B00, 
                0x0B00
            }, 

            Package (0x06)
            {
                0x03E8, 
                Zero, 
                0x0A, 
                0x0A, 
                0x0A00, 
                0x0A00
            }, 

            Package (0x06)
            {
                0x0384, 
                Zero, 
                0x0A, 
                0x0A, 
                0x0900, 
                0x0900
            }, 

            Package (0x06)
            {
                0x0320, 
                Zero, 
                0x0A, 
                0x0A, 
                0x0800, 
                0x0800
            }
        })
        Method (ACST, 0, NotSerialized)
        {
            Debug = "Method C000.ACST Called"
            Debug = "C000 C-States    : 13"
            Return (Package (0x05)
            {
                One, 
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
                    Zero, 
                    0x03E8
                }, 

                Package (0x04)
                {
                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x01,               // Bit Width
                            0x02,               // Bit Offset
                            0x0000000000000010, // Address
                            0x03,               // Access Size
                            )
                    }, 

                    0x03, 
                    0xCD, 
                    0x01F4
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
                    0xF5, 
                    0x015E
                }
            })
        }
    }

    Scope (\_SB.SCK1.C101)
    {
        Method (APSS, 0, NotSerialized)
        {
            Debug = "Method _SB_.SCK1.C101.APSS Called"
            Return (\_SB.SCK1.C100.APSS)
        }

        Method (ACST, 0, NotSerialized)
        {
            Debug = "Method C001.ACST Called"
            Debug = "C001 C-States    : 13"
            Return (Package (0x05)
            {
                One, 
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
                    0x03E8, 
                    0x03E8
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
                    0xC6, 
                    0xC8
                }, 

                Package (0x04)
                {
                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x01,               // Bit Width
                            0x02,               // Bit Offset
                            0x0000000000000030, // Address
                            0x03,               // Access Size
                            )
                    }, 

                    0x06, 
                    0xF5, 
                    0x015E
                }
            })
        }
    }

    Scope (\_SB.SCK1.C102)
    {
        Method (APSS, 0, NotSerialized)
        {
            Debug = "Method _SB_.SCK1.C102.APSS Called"
            Return (\_SB.SCK1.C100.APSS)
        }

        Method (ACST, 0, NotSerialized)
        {
            Return (\_SB.SCK1.C101.ACST ())
        }
    }

    Scope (\_SB.SCK1.C103)
    {
        Method (APSS, 0, NotSerialized)
        {
            Debug = "Method _SB_.SCK1.C103.APSS Called"
            Return (\_SB.SCK1.C100.APSS)
        }

        Method (ACST, 0, NotSerialized)
        {
            Return (\_SB.SCK1.C101.ACST ())
        }
    }

    Scope (\_SB.SCK1.C104)
    {
        Method (APSS, 0, NotSerialized)
        {
            Debug = "Method _SB_.SCK1.C104.APSS Called"
            Return (\_SB.SCK1.C100.APSS)
        }

        Method (ACST, 0, NotSerialized)
        {
            Return (\_SB.SCK1.C101.ACST ())
        }
    }

    Scope (\_SB.SCK1.C105)
    {
        Method (APSS, 0, NotSerialized)
        {
            Debug = "Method _SB_.SCK1.C105.APSS Called"
            Return (\_SB.SCK1.C100.APSS)
        }

        Method (ACST, 0, NotSerialized)
        {
            Return (\_SB.SCK1.C101.ACST ())
        }
    }

    Scope (\_SB.SCK1.C106)
    {
        Method (APSS, 0, NotSerialized)
        {
            Debug = "Method _SB_.SCK1.C106.APSS Called"
            Return (\_SB.SCK1.C100.APSS)
        }

        Method (ACST, 0, NotSerialized)
        {
            Return (\_SB.SCK1.C101.ACST ())
        }
    }

    Scope (\_SB.SCK1.C107)
    {
        Method (APSS, 0, NotSerialized)
        {
            Debug = "Method _SB_.SCK1.C107.APSS Called"
            Return (\_SB.SCK1.C100.APSS)
        }

        Method (ACST, 0, NotSerialized)
        {
            Return (\_SB.SCK1.C101.ACST ())
        }
    }

    Scope (\_SB.SCK1.C108)
    {
        Method (APSS, 0, NotSerialized)
        {
            Debug = "Method _SB_.SCK1.C108.APSS Called"
            Return (\_SB.SCK1.C100.APSS)
        }

        Method (ACST, 0, NotSerialized)
        {
            Return (\_SB.SCK1.C101.ACST ())
        }
    }

    Scope (\_SB.SCK1.C109)
    {
        Method (APSS, 0, NotSerialized)
        {
            Debug = "Method _SB_.SCK1.C109.APSS Called"
            Return (\_SB.SCK1.C100.APSS)
        }

        Method (ACST, 0, NotSerialized)
        {
            Return (\_SB.SCK1.C101.ACST ())
        }
    }

    Scope (\_SB.SCK1.C10A)
    {
        Method (APSS, 0, NotSerialized)
        {
            Debug = "Method _SB_.SCK1.C10A.APSS Called"
            Return (\_SB.SCK1.C100.APSS)
        }

        Method (ACST, 0, NotSerialized)
        {
            Return (\_SB.SCK1.C101.ACST ())
        }
    }

    Scope (\_SB.SCK1.C10B)
    {
        Method (APSS, 0, NotSerialized)
        {
            Debug = "Method _SB_.SCK1.C10B.APSS Called"
            Return (\_SB.SCK1.C100.APSS)
        }

        Method (ACST, 0, NotSerialized)
        {
            Return (\_SB.SCK1.C101.ACST ())
        }
    }

    Scope (\_SB.SCK1.C10C)
    {
        Method (APSS, 0, NotSerialized)
        {
            Debug = "Method _SB_.SCK1.C10C.APSS Called"
            Return (\_SB.SCK1.C100.APSS)
        }

        Method (ACST, 0, NotSerialized)
        {
            Return (\_SB.SCK1.C101.ACST ())
        }
    }

    Scope (\_SB.SCK1.C10D)
    {
        Method (APSS, 0, NotSerialized)
        {
            Debug = "Method _SB_.SCK1.C10D.APSS Called"
            Return (\_SB.SCK1.C100.APSS)
        }

        Method (ACST, 0, NotSerialized)
        {
            Return (\_SB.SCK1.C101.ACST ())
        }
    }

    Scope (\_SB.SCK1.C10E)
    {
        Method (APSS, 0, NotSerialized)
        {
            Debug = "Method _SB_.SCK1.C10E.APSS Called"
            Return (\_SB.SCK1.C100.APSS)
        }

        Method (ACST, 0, NotSerialized)
        {
            Return (\_SB.SCK1.C101.ACST ())
        }
    }

    Scope (\_SB.SCK1.C10F)
    {
        Method (APSS, 0, NotSerialized)
        {
            Debug = "Method _SB_.SCK1.C10F.APSS Called"
            Return (\_SB.SCK1.C100.APSS)
        }

        Method (ACST, 0, NotSerialized)
        {
            Return (\_SB.SCK1.C101.ACST ())
        }
    }

    Scope (\_SB.SCK1.C110)
    {
        Method (APSS, 0, NotSerialized)
        {
            Debug = "Method _SB_.SCK1.C110.APSS Called"
            Return (\_SB.SCK1.C100.APSS)
        }

        Method (ACST, 0, NotSerialized)
        {
            Return (\_SB.SCK1.C101.ACST ())
        }
    }

    Scope (\_SB.SCK1.C111)
    {
        Method (APSS, 0, NotSerialized)
        {
            Debug = "Method _SB_.SCK1.C111.APSS Called"
            Return (\_SB.SCK1.C100.APSS)
        }

        Method (ACST, 0, NotSerialized)
        {
            Return (\_SB.SCK1.C101.ACST ())
        }
    }

    Scope (\_SB.SCK1.C112)
    {
        Method (APSS, 0, NotSerialized)
        {
            Debug = "Method _SB_.SCK1.C112.APSS Called"
            Return (\_SB.SCK1.C100.APSS)
        }

        Method (ACST, 0, NotSerialized)
        {
            Return (\_SB.SCK1.C101.ACST ())
        }
    }

    Scope (\_SB.SCK1.C113)
    {
        Method (APSS, 0, NotSerialized)
        {
            Debug = "Method _SB_.SCK1.C113.APSS Called"
            Return (\_SB.SCK1.C100.APSS)
        }

        Method (ACST, 0, NotSerialized)
        {
            Return (\_SB.SCK1.C101.ACST ())
        }
    }
}

