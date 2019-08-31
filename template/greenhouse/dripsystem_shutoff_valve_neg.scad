module dripsystem_shutoff_valve() {
    union() {
        cylinder(15, 13/2, 13/2);
        translate([-25/2,-13/2,4+13/2]) {
            cube([25, 13, 13/2]);
        }
        translate([-42/2,-7/2,4+13/2]) {
            cube([42, 7, 13/2]);
        }
        translate([-25/2,0,4 + (13/2)]) {
            rotate([0,90,0]) {
                cylinder(25, 13/2, 13/2);
            }
        }
        translate([-42/2,0,4 + (13/2)]) {
            rotate([0,90,0]) {
                cylinder(42, 7/2, 7/2);
            }
        }    
    }
}

dripsystem_shutoff_valve();
