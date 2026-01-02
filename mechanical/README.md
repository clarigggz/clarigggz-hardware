# Clarigggz Mechanical Engineering

## Standards
*   **CAD System:** OpenSCAD (Parametric)
*   **Library:** [BOSL2](https://github.com/BelfrySCAD/BOSL2) (Required)
*   **Methodology:** Modular "Code-as-CAD"

## Directory Structure
*   `lib/`: Shared constants, global parameters, and mathematical utilities.
*   `modules/`: Individual component definitions (encapsulated logic).
*   `v0_prototype/assembly/`: Final assembly files for specific hardware iterations.

## BOSL2 Setup
Ensure the BOSL2 library is installed in your OpenSCAD library path.
On Linux, this is typically `~/.local/share/OpenSCAD/libraries/BOSL2`.

## Building the Prototype
Open `v0_prototype/assembly/main.scad` to view the full assembly. 
Variables in `lib/constants.scad` can be adjusted to scale the frame for different IPDs (Inter-Pupillary Distances) or head sizes.
