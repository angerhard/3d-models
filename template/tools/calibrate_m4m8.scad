use <./m4nut_neg.scad>
use <./m8nut_neg.scad>

difference() {
    cube([20, 45, 10]);
    translate([10, 5, 6.6]) {
        m4_nut();
    }
    translate([10, 5, 2.9]) {
        rotate([0, 180, 0]) {
            m4_screw_round(20);
        }
    }
    translate([9.5, 17, 3.4]) {
        m8_nut();
    }
    
        translate([16.5, 33, 1.0]) {
        m8_nut();
    }
}
