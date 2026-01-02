/**
 * Clarigggz Franken-Glass v0.1 Assembly
 * Standardized on BOSL2 and Modular OpenSCAD
 */

include <BOSL2/std.scad>
include <../../lib/constants.scad>

use <../../modules/front_frame.scad>
use <../../modules/temple_arms.scad>
use <../../modules/optics.scad>

// --- Assembly ---

// 1. Front Frame
front_frame();

// 2. Temple Arms
temple_arm(side=1);  // Right side (Compute side)
temple_arm(side=-1); // Left side

// 3. Optics Modules (Positioned relative to frame cutouts)
move([-(BRIDGE_GAP/2 + OPTICS_W), 5, -5])
    optics_module();

move([BRIDGE_GAP/2, 5, -5])
    optics_module();

echo("Clarigggz Assembly: V0.1 Modular Frame Rendered with BOSL2.");
