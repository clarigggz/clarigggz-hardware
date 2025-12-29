# Contributing to Clarigggz Hardware

Thank you for contributing to the Clarigggz hardware ecosystem. To maintain a high-quality, professional engineering environment, please follow these guidelines.

## 1. Contributor License Agreement (CLA)
All contributors must sign the [CLA.md](CLA.md) before their first pull request can be merged. This ensures that all contributions are legally clear and can be used in our permissive hardware ecosystem.

## 2. Git LFS (Large File Storage)
This repository uses Git LFS to manage large binary assets such as CAD models, high-resolution images, and PDF documentation. 

**Requirement:** Ensure you have `git-lfs` installed on your local machine before cloning or pushing changes.
- Install: `git lfs install`
- Verify: `git lfs status`

## 3. File Formats
- **Mechanical**: Prefer `.step` or `.stp` for interchange. Include native files (e.g., `.fcstd` for FreeCAD) when possible.
- **Electronics**: We prefer KiCad (`.kicad_pcb`, `.kicad_sch`) for open-source reference designs.
- **Silicon**: Verilog/SystemVerilog should follow the project's linting rules.

## 4. Workflow
1. Fork the repository.
2. Create a feature branch (`feat/new-sensor-mount`).
3. Validate your design against the [CDD.md](specs/CDD.md).
4. Submit a Pull Request.

---
*Clarigggz: Building the vessel for spatial computing.*
