use <../../template/science/testtube_neg.scad>

module gothic_left() {
difference() {
    translate([2, 0, 0]) {
        rotate([90,0,0]) {
            scale([0.51,1,1]) {
                cylinder(40, 20, 20, $fn=50);
            }
        }
    }
    translate([0.01, -100, -1]) {
        cube([100,120,200]);
    }
    translate([-50, -99, -100]) {
        cube([100,100,100]);
    }
}
                  
    
}
module gothic_right() {
difference() {
    translate([-2, 0, 0]) {
        rotate([90,0,0]) {
            scale([0.51,1,1]) {
                cylinder(40, 20, 20, $fn=50);
            }
        }
    }
    translate([-100, -100, -1]) {
        cube([100,120,200]);
    }
    translate([-50, -99, -100]) {
        cube([100,100,100]);
    }
}
}

module gothic() {
    union() {
        gothic_left();
        gothic_right();    
    }
}

module top_holder() {
    difference() {
        cube([20, 25, 25]);
        translate([10,26,-1]) {
            scale([1.23,1,1.2]) {
                gothic();
            }
        }
    }
}

difference() {
    
    union() {
        color("blue", 1) {
            top_holder();
        }
    translate([-4,0,0]) {
        cube([4, 25, 25]);
    }
    translate([20,0,0]) {
        cube([4, 25, 25]);
    }
    }
    translate([10,12.5,5]) {
        testtube();
    }
}

