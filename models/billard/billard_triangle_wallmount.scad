module _rawpart() {
    rotate([-90+62,0,0]) {
        rotate([0, 0, 45]) {
            difference() {
                cube([90, 90, 160]);
                translate([0, 0, -1]) {    
                    rotate([0,0,75]) {
                        cube([190, 190, 192]);
                    }
                    rotate([0,0,285]) {
                        cube([190, 190, 192]);
                    }
                }
            }
        }
    }
}

module screw() {
    union() {
        translate([0, 0, 100]) {
            cylinder(7, d1=6,  d2=12  );
        }
        cylinder(  101, d1=6,  d2=6  );
    }
}

module _block() {
    difference() {
        _rawpart();
        translate([-70, 0, -100]) {
            cube([200, 200, 100]);
        }
        translate([-50, 30, 62]) {
            cube([200, 200, 100]);
        }
    }
}

module holder() {
    difference() {
        union() {
            _block();
            translate([0,0,62]) {
                scale([1.2, 1.2 ,0.1]) {
                    _block();
                }
            }
        }
        translate([-75, 110,-1]) {
            cube([150, 105, 120]);
        }
    }
}



difference() {
    holder();
    translate([15,100,-38]) {
        screw();
    }
    translate([-15,100,-38]) {
        screw();
    }
}
