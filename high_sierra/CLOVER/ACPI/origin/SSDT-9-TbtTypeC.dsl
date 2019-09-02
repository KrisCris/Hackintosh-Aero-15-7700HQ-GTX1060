/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-9-TbtTypeC.aml, Sat Aug 31 20:06:28 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000021E (542)
 *     Revision         0x02
 *     Checksum         0x31
 *     OEM ID           "INTEL "
 *     OEM Table ID     "TbtTypeC"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160422 (538313762)
 */
DefinitionBlock ("", "SSDT", 2, "INTEL ", "TbtTypeC", 0x00000000)
{
    External (_SB_.PCI0.RP05.PXSX, DeviceObj)    // (from opcode)
    External (TBSE, IntObj)    // (from opcode)
    External (TBTS, IntObj)    // (from opcode)

    If (LAnd (LEqual (TBTS, One), LEqual (TBSE, 0x05)))
    {
        Scope (\_SB.PCI0.RP05.PXSX)
        {
            Device (TBDU)
            {
                Name (_ADR, 0x00020000)  // _ADR: Address
                Device (XHC)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (Zero)
                    }

                    Device (RHUB)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        Method (TPLD, 2, Serialized)
                        {
                            Name (PCKG, Package (0x01)
                            {
                                Buffer (0x10){}
                            })
                            CreateField (DerefOf (Index (PCKG, Zero)), Zero, 0x07, REV)
                            Store (One, REV)
                            CreateField (DerefOf (Index (PCKG, Zero)), 0x40, One, VISI)
                            Store (Arg0, VISI)
                            CreateField (DerefOf (Index (PCKG, Zero)), 0x57, 0x08, GPOS)
                            Store (Arg1, GPOS)
                            CreateField (DerefOf (Index (PCKG, Zero)), 0x4A, 0x04, SHAP)
                            Store (One, SHAP)
                            CreateField (DerefOf (Index (PCKG, Zero)), 0x20, 0x10, WID)
                            Store (0x08, WID)
                            CreateField (DerefOf (Index (PCKG, Zero)), 0x30, 0x10, HGT)
                            Store (0x03, HGT)
                            Return (PCKG)
                        }

                        Method (TUPC, 1, Serialized)
                        {
                            Name (PCKG, Package (0x04)
                            {
                                One, 
                                Zero, 
                                Zero, 
                                Zero
                            })
                            Store (Arg0, Index (PCKG, One))
                            Return (PCKG)
                        }

                        Device (HS01)
                        {
                            Name (_ADR, One)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (TUPC (0x08))
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                Return (TPLD (One, One))
                            }
                        }

                        Device (HS02)
                        {
                            Name (_ADR, 0x02)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (TUPC (0x08))
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                Return (TPLD (One, 0x02))
                            }
                        }

                        Device (SS01)
                        {
                            Name (_ADR, 0x03)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (TUPC (0x09))
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                Return (TPLD (One, One))
                            }
                        }

                        Device (SS02)
                        {
                            Name (_ADR, 0x04)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (TUPC (0x09))
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                Return (TPLD (One, 0x02))
                            }
                        }
                    }
                }
            }
        }
    }
}

