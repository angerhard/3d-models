use <../../template/sensor/lidar_neg.scad>

difference() {
    cube([50, 20, 22]);
    rotate([180,0,0]) {
        translate([10, -18, -22.1])
            lidar_neg();
    }
}