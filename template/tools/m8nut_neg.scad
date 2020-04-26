module m8_nut() {
    add = 2.4;
    width = 13;
    height = 6.2;
    
    radius = (width + add) / 2;
    
    cylinder(height + add, radius, radius, $fn = 6);
    
}



m8_nut();
