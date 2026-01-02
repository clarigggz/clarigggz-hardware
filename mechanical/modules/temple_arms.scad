/**
 * Temple Arms Module
 * Uses BOSL2 for ergonomic curves and electronics integration
 */
include <BOSL2/std.scad>
include <../lib/constants.scad>

module temple_arm(side=1) {
    // side: 1 for right, -1 for left
    mirror([side == -1 ? 1 : 0, 0, 0])
    move([FRAME_WIDTH/2 - TEMPLE_WIDTH, 0, -TEMPLE_LENGTH])
    {
        // Main Arm with subtle curvature
        diff() {
            cuboid([TEMPLE_WIDTH, TEMPLE_THICKNESS, TEMPLE_LENGTH], rounding=2, edges="y", anchor=BOTTOM+LEFT);
            
            // Internal Cable Channel
            move([TEMPLE_WIDTH/2, TEMPLE_THICKNESS/2, 10])
                cuboid([3, 3, TEMPLE_LENGTH - 20], anchor=BOTTOM);
        }
        
        // Electronics Housing (SpacemiT K1 / BPI-F3) on Right Side
        if (side == 1) {
            move([-5, -30, TEMPLE_LENGTH - 80])
            diff() {
                cuboid([50, 40, 75], rounding=5, anchor=BOTTOM+LEFT);
                
                // Inner cavity
                move([5, 5, 5])
                cuboid([40, 30, 65], rounding=2, anchor=BOTTOM+LEFT);
                
                // M2.5 Mounting Holes
                move([15, 0, 15]) rotate([90, 0, 0]) cylinder(d=M2_5_DIA, h=10);
                move([35, 0, 15]) rotate([90, 0, 0]) cylinder(d=M2_5_DIA, h=10);
            }
        }
    }
}
