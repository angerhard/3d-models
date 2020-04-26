module m4_nut() {
    add = 1.9;
    width = 7;
    height = 3;
    
    radius = (width + add) / 2;
    
    cylinder(height + add, radius, radius, $fn = 6);
    
}


module m4_screw_round(length) {

    add = 0.5;
    headWidth = 7;
    headHeight = 2.5;

    bodyRadius = (4 + add) / 2;

    headRadius = (headWidth + add) / 2;

    union() {
        cylinder(headHeight + add, headRadius, headRadius, $fn = 36);
        
        translate([0,0,length * -1 + headHeight + 0.01]) {
            cylinder(length, bodyRadius, bodyRadius, $fn = 36);
        }
    }
    
    
}



m4_screw_round(20);

m4_nut();