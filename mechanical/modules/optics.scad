/**
 * Optics Module - Birdbath 0.49"
 */
include <../lib/constants.scad>

module optics_module() {
    color("cyan", 0.3)
    cube([OPTICS_W, OPTICS_H, OPTICS_D]);
    
    // Lens element mock
    color("white", 0.1)
    translate([OPTICS_W/2, OPTICS_H/2, 2])
    sphere(d=OPTICS_W * 0.8);
}
