/**
 * Clarigggz Franken-Glass v0.1 Prototype Frame
 * Tool: OpenSCAD (Code-as-CAD)
 * License: CERN-OHL-P
 */

// --- Parameters ---
frame_width = 145;
frame_height = 45;
frame_thickness = 4;
bridge_gap = 20;

temple_length = 150;
temple_width = 15;
temple_thickness = 5;

// Optics module dimensions (Birdbath 0.49")
optics_w = 28;
optics_h = 24;
optics_d = 35;

// --- Modules ---

module main_bridge() {
    difference() {
        // Main front frame
        union() {
            // Brow bar
            translate([-frame_width/2, frame_height - 10, 0])
                cube([frame_width, 10, frame_thickness]);
            
            // Bridge
            translate([-bridge_gap/2, 10, 0])
                cube([bridge_gap, frame_height - 10, frame_thickness]);
        }
        
        // Lens/Optics cutouts
        translate([-(bridge_gap/2 + optics_w), 5, -1])
            cube([optics_w, optics_h, frame_thickness + 2]);
        translate([bridge_gap/2, 5, -1])
            cube([optics_w, optics_h, frame_thickness + 2]);
    }
}

module temple_arm(side=1) {
    // side: 1 for right, -1 for left
    translate([side * (frame_width/2 - temple_width), 0, -temple_length])
        union() {
            // Main arm
            difference() {
                cube([temple_width, temple_thickness, temple_length]);
                
                // Cable routing channel (Internal)
                translate([2, 1, 10])
                    cube([3, 3, temple_length - 20]);
            }
            
            // Mounting box for BPI-F3 (Right side only for now)
            if (side == 1) {
                translate([-10, -35, temple_length - 80])
                    difference() {
                        cube([45, 40, 70]); // BPI-F3 SoM Carrier box
                        
                        translate([2, 5, 2])
                            cube([41, 36, 66]); // Inner cavity
                            
                        // Mounting holes for electronics
                        translate([15, 0, 10]) rotate([-90, 0, 0]) cylinder(d=2.5, h=20, $fn=20);
                        translate([35, 0, 10]) rotate([-90, 0, 0]) cylinder(d=2.5, h=20, $fn=20);
                    }
            }
        }
}

module birdbath_module() {
    color("cyan", 0.5)
    cube([optics_w, optics_h, optics_d]);
}

// --- Assembly ---

// Front Frame
main_bridge();

// Left Temple
temple_arm(-1);

// Right Temple (with BPI-F3 mount)
temple_arm(1);

// Mock Optics placement
translate([-(bridge_gap/2 + optics_w), 5, -5])
    birdbath_module();

translate([bridge_gap/2, 5, -5])
    birdbath_module();

echo("Clarigggz Hardware: Franken-Glass v0.1 Assembly Rendered.");
