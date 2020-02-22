use <../../template/sensor/lidar_neg.scad>

module oiltank_cap() {
    
    union() {
        
        outer_ring_diameter = 68;
        outer_ring_height = 22;
        outer_ring_thickness = 2;
        
        outer_ring_into_tank = 12;
        
        outer_plate_diameter = 84;
        outer_plate_height = 3;

        
        
        difference() {
            union() {
                translate([0,0,outer_ring_into_tank]) 
                cylinder(
                    outer_plate_height,
                    outer_plate_diameter/2,
                    outer_plate_diameter/2,
                    $fn=100);
                cylinder(
                    outer_ring_height,
                    outer_ring_diameter/2,
                    outer_ring_diameter/2,
                    $fn=100);
            }
            translate([0,0,-0.1]) 
                cylinder(
                    outer_ring_height - outer_ring_thickness,
                    outer_ring_diameter/2 - outer_ring_thickness,
                    outer_ring_diameter/2 - outer_ring_thickness,
                    $fn=100);
        }
    }
    
}


    level = 5;
    
    difference() {
        union() {
            oiltank_cap();
            translate([-50/2,-20/2,18-level]) {
                cube([50, 20, 20]);
            }
        }
        translate([-15,7,38-level])
            rotate([180,0,0])
                lidar_neg();
    }
    




