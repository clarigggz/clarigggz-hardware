# Clarigggz Compatibility Definition Document (CDD)

Version: 0.2.0-V2
Status: APPROVED (Strategic Pivot)

## 1. Introduction
This document defines the requirements for Clarigggz V2 hardware, centered around the SpacemiT K1 SoC.

## 2. Core Architectural Requirements
- **CPU Target**: SpacemiT K1 (RISC-V 64-bit, 8x X60 Cores).
- **Vector Extensions**: RVV 1.0 (Mandatory for UI/Spatial Engine).
- **NPU**: 2.0 TOPS (Integrated in K1).
- **Memory**: Minimum 4GB LPDDR4x (Specified for K1 variants).

## 3. Peripheral Standards
- **Display**: 0.49" Micro-OLED (Birdbath optics) via MIPI-DSI.
- **Camera**: MIPI-CSI (Direct ISP integration).
- **Input**: Custom Ring with 9-DoF IMU (MPU-6050 equivalent) via RF/Bluetooth.
- **Security**: Capacitive Fingerprint Sensor (UART) on the temple.

## 4. Reference Implementation: "Franken-Glass" v0.1
- **Compute**: Banana Pi BPI-F3 (K1 SoM).
- **Expansion**: UART/I2C/SPI via custom breakout.
- **Power**: PMIC integration (AXP series recommended).
