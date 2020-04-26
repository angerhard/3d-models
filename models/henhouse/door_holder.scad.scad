use <../../template/tools/m4nut_neg.scad>
use <../../template/tools/m8nut_neg.scad>

add = 0.5;



difference() {
    union() {
        cube([58, 6, 200]);

        translate([52 / 2 - 5, 5.9, 10]) {
            cube([10, 35, 180]);
        }
        translate([52 / 2, 47, 10]) {
            cylinder(180, 10, 10);
        }

    }
    translate([52 / 2, 47, 10]) {
        translate([0, 0, -0.1]) {
            cylinder(182, 4.5, 4.5);
        }
        translate([0,0,45]) {
            nut8cut();
        }
        translate([0,0,80]) {
            nut8cut();
        }
        translate([0,0,130]) {
            nut8cut();
        }
        translate([0,0,165]) {
            nut8cut();
        }
        
        translate([0,0,-0.1]) {
            rotate([0, 0, 90]) {
                m8_nut();
            }
        }
    }
    translate([9, 6.01, 10]) {
        screw();
    }
    translate([9, 6.01, 40]) {
        screw();
    }
    translate([9, 6.01, 130]) {
        screw();
    }
    translate([9, 6.01, 160]) {
        screw();
    }

    translate([41, 6.01, 10]) {
        screw();
    }
    translate([41, 6.01, 40]) {
        screw();
    }
    translate([41, 6.01, 130]) {
        screw();
    }
    translate([41, 6.01, 160]) {
        screw();
    }
}

module screw() {
    color("green") {
        rotate([90, 0, 0]) {
            union() {
                cylinder(5, 3.5, 1.75);
                cylinder(10, 1.75, 1.75);
            }
        }
    }
}

module nut8cut() {
    union() {
        m8_nut();
        translate([-7.5, 0, -1.4]) {
            cube([15, 20, 10]);
        }
        translate([0, -5.8, 4.3]) {
            rotate([90, 0, 0]) {
                m4_nut();
            }
        }
        translate([0, -3.8, 4.3]) {
            rotate([90, 0, 0]) {
                m4_nut();
            }
        }
        translate([0, -44.01, 4.3]) {
            rotate([90, 0, 00]) {
                color("blue") {
                    m4_screw_round(41);
                }
            }
        }
        
    }
}