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

module body() {
    union() {
        for (step =[0:1:6]) {
            translate([(24*step), 0, 0]) {
                cube([4, 25, 130]);
            }
            translate([4+(24*step), 0, 105]) {
                top_holder();
            }
            
            translate([14+(24*step), 50, 0]) {
                union() {
                    cylinder(70, 5, 5);
                    translate([0, 0, 70]) {
                        sphere(5);
                    }
                }
            }
        }
        
        translate([(24*7), 0, 0]) {
            union() {
                cube([4, 25, 130]);
            }
        }
        
        translate([-10,-10,-10]) {
            cube([190, 80, 20]);
        }
        
        translate([-10,-10,0]) {
            rotate([0,90,0]) {
                cylinder(190, 10, 10);
            }
        }

        translate([-10,70,0]) {
            rotate([0,90,0]) {
                cylinder(190, 10, 10);
            }
        }
    }
}

union() {
    difference() {
        body();
        for (step =[0:1:6]) {
            translate([14+(24*step), 13, 7]) {
                testtube();
            }
        }
    }

    translate([-10,-20,-10]) {
            cube([190, 100, 10]);
    }
}

