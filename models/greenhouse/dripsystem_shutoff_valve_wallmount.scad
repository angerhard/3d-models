use <../../template/greenhouse/dripsystem_shutoff_valve_neg.scad>
difference() {
    cube([41.8, 20, 15]);
    translate([41.9/2, 20/2, -0.1])
        dripsystem_shutoff_valve();
}
