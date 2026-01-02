# BPI-F3 Expansion Adapter (KiCad)

**Project Status:** DESIGN PHASE
**Target Hardware:** Banana Pi BPI-F3 (SpacemiT K1)
**Form Factor:** Custom Temple-Mount PCB

## Design Goals
1.  **MIPI-DSI Breakout:** Clean routing for 0.49" Micro-OLED ribbon cables.
2.  **Sensor Integration:** SPI/I2C headers for MPU-6050 (IMU) and OV5647 (Camera).
3.  **Power Management:** Interface with K1 PMIC for battery monitoring.
4.  **Debug Access:** USB-UART bridge for kernel console access.

## Layout Constraints
- Width: Max 12mm (to fit inside the OpenSCAD temple arm).
- Length: 65mm.
- 4-Layer Stackup recommended for signal integrity (MIPI differential pairs).

## Tooling
- **Software:** KiCad 8.x
- **Libraries:** Custom SpacemiT K1 footprint (pending validation).
