
    sphere_radius = 50;
    sphere_glass_width = 2;
    additional_outside = 5;
    
    socket_height = 30;
    socket_cut_in = 10;

    start_of_round = 113;
    width_of_banner = 90;
    

    // socket
    difference() {
       
        cylinder(socket_height, 
            sphere_radius + (2 * additional_outside), 
            sphere_radius + (2 * additional_outside), 
            $fn = 100);
        translate([0, 0, socket_height+0.1 - socket_cut_in]) {
            tube();
        }
        translate([-20, -17, -0.01]) {
            battery();
        }
    
    }
    translate([-width_of_banner/2, 0, socket_height - 0.01]) {
        banner();
    }

    
    module tube() {
        difference() {
            cylinder(socket_cut_in,
            sphere_radius + 0.7,
            sphere_radius + 0.7,
            $fn = 100);
            cylinder(socket_cut_in,
            sphere_radius - (sphere_glass_width * 2),
            sphere_radius - (sphere_glass_width * 2),
            $fn = 100);
        }
    }
    
    module battery() {
        union() {
            cube([75, 35, 20]);
            translate([0,35,0]) {
                cylinder(socket_height + 5, 5, 5);
            }
        }
    }
    
    module banner() {
        union() {
            cube([width_of_banner, 5, start_of_round]);
            translate([width_of_banner / 2, 5, start_of_round]) {
                rotate([90, 0, 0]) {
                    cylinder(5, 
                        width_of_banner/2, 
                        width_of_banner/2,
                        $fn = 100);
                }
            }
        }
    }
        