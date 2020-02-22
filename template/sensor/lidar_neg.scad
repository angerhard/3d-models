
module lidar_neg() {
    
    // scale factor (addition)
    s = 0.5;
    ts = s/2;
    
    screw_01_vector = [-4+s, 6+s, 0+s];
    screw_02_vector = [33+s, 6+s, 0+s];

    screw_rad = 1+ts;
    screw_length = 10+ts;

    sender_vector = [11+s, 12+s, 22+s];
    
    receiv_vector = [09+s, 12+s, 22+s];
    
    baseblock_vector = [30+s, 13+s, 7+s];
    
    holder_flat_vector = [45+s, 8+s, 2+s];
    
    holder_vector = [35+s, 8+s, 4+s];
    
    stage_vector = [30+s, 8.4+s, 17+s];
    
    connector_vector = [11+s, 20+s, 10+s];


    union() {
        translate([0-ts, 0-ts, 0-ts]) {
            cube(baseblock_vector);
        }

        translate([((45-30)/2*-1)-ts, ((13-8)/2)-ts, 0-ts]) {
            cube(holder_flat_vector);
        }

        translate([((35-30)/2*-1-ts), ((13-8)/2)-ts, 0-ts]) {
            cube(holder_vector);
        }
        translate([0-ts, (13-8.4)/2-ts, 0-ts]) {
            cube(stage_vector);
        }
        translate([0-ts, 0.5-ts, 0-ts]) {
            cube(sender_vector);
        }
        translate([21-ts, 0.5-ts, 0-ts]) {
            cube(receiv_vector);
        }
        translate([9.2-ts, 11-ts, 0-ts]) {
            cube(connector_vector);
        }
        translate(screw_01_vector)
            cylinder(screw_length, screw_rad, screw_rad);
        translate(screw_02_vector)
            cylinder(screw_length, screw_rad, screw_rad);
    }
}
