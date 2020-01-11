

module lidar_neg() {
    union() {
        cube([30, 13, 7]);
        translate([(45-30)/2*-1, (13-8)/2, 0]) {
            cube([45, 8, 2]);
        }
        cube([30, 13, 7]);
        translate([(35-30)/2*-1, (13-8)/2, 0]) {
            cube([35, 8, 4]);
        }
        translate([0, (13-8.4)/2, 0]) {
            cube([30, 8.4, 17]);
        }
        translate([0, 0.5, 0]) {
            cube([11, 12, 22]);
        }
        translate([21, 0.5, 0]) {
            cube([09, 12, 22]);
        }
        translate([9.2, 11, 0]) {
            cube([10, 20, 10]);
        }
    }
}
lidar_neg();