/**
 * Front Frame Module
 * Uses BOSL2 for refined curves
 */
include <BOSL2/std.scad>
include <../lib/constants.scad>

module front_frame() {
    diff() {
        // Main brow and bridge assembly
        rect([FRAME_WIDTH, 10], rounding=3, anchor=CENTER) 
            move([0, FRAME_HEIGHT/2 - 5, 0])
            cuboid([FRAME_WIDTH, 10, FRAME_THICKNESS], rounding=2, edges="z");
        
        // Lens cutouts
        move([-(BRIDGE_GAP/2 + OPTICS_W/2), 0, 0])
            cuboid([OPTICS_W, OPTICS_H, FRAME_THICKNESS + 2], rounding=5, edges="z");
            
        move([(BRIDGE_GAP/2 + OPTICS_W/2), 0, 0])
            cuboid([OPTICS_W, OPTICS_H, FRAME_THICKNESS + 2], rounding=5, edges="z");
    }
    
    // Bridge Arch
    move([0, -5, 0])
    cuboid([BRIDGE_GAP, 20, FRAME_THICKNESS], rounding=5, edges="z", anchor=CENTER);
}
