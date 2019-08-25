stickSize = 90;
union() {
    cylinder(stickSize+14, 8/2, 8/2);
    translate([0, 0, stickSize+14]) 
        sphere(d = 16/2);
    color("Blue", 1.0) {
        cylinder(14, 9.2/2, 9.2/2);
        translate([9/2, 0, 0])
            cylinder(10/2, 1.2, 1.2, $fn=16);
        translate([0, 9/2, 0])
            cylinder(10/2, 1.2, 1.2, $fn=16);
        translate([-9/2, 0, 0])
            cylinder(10/2, 1.2, 1.2, $fn=16);
        translate([0, -9/2, 0])
            cylinder(10/2, 1.2, 1.2, $fn=16);
    }
}