faces = 32;
scale_factor = 0.3937; //convert mm to inches

// cylinder
B = 1.52 * scale_factor;
A = 2.16 * scale_factor;

cylinder(h = B, d = A, center = false, $fn = faces);

// pads
F = 0.30 * scale_factor;
G = 0.64  * scale_factor;
translate([0, 0, G]) {
    E = 6.35 * scale_factor;
    C = 0.20 * scale_factor;
    D = 0.51 * scale_factor;

    cube(size = [E, D, C], center = true);
    cube(size = [D, E, C], center = true);
}

// pin 1 identification
translate([A/2 * .75, 0, B]) cylinder(h = .01, d = A/10, center = false, $fn = faces);

// text
//translate([A/2 * .45, 0, B]) rotate([0, 0, 90]) linear_extrude(height = .01) text("E5", size = .34, halign = "center", valign = "bottom");