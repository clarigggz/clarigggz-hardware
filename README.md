# Clarigggz Hardware

This repository contains the reference hardware designs for the Clarigggz AR platform, following the strategy of decoupling hardware from services.

## Repository Structure

- `/specs`: The Compatibility Definition Document (CDD) - The technical standards for "Clarigggz Compatible" hardware.
- `/silicon`: RTL, Verilog, and FPGA emulation for the custom compute unit.
- `/electronics`: KiCad/Altium projects for Reference Boards and PCBs.
- `/mechanical`: CAD files (FreeCAD/SolidWorks) for Reference Frames and industrial design.
- `/docs`: Assembly guides, Bill of Materials (BOM), and manufacturing documentation.

## Revision Control

Hardware revisions follow a `Rev [Letter]` format (e.g., Rev A, Rev B). Major architectural changes are tagged in git and synchronized with the CDD versioning.

## Licensing

We use a permissive licensing matrix to maximize adoption and trust with manufacturing partners:

| Component Layer | License |
|---|---|
| **Mechanical & PCB** | CERN-OHL-P (Permissive) |
| **Silicon / RTL** | Solderpad Hardware License v2.1 |
| **Firmware / Low-Level** | Apache 2.0 |
| **Documentation** | CC-BY 4.0 |

## Contribution Policy

- **Internal**: PRs must be validated against the current CDD.
- **External**: Contributors must sign a CLA (Contributor License Agreement) to ensure IP clarity.

---
*Clarigggz: Software Defined Hardware for the next century.*
