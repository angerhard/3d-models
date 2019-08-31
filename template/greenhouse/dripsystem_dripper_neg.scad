module _inner_upper_holder(space) {
    translate([space,2.7,10.6]) {
        rotate([15,0,0]) {
            cube([1, 6, 6]);
        }
    }
}

module _inner_lower_holder(space) {
    translate([space,1.5,-4.4]) {
        rotate([-15,0,0]) {
            cube([1, 6, 6]);
        }
    }
}


module dripsystem_dripper_neg() {
    difference() {
        cube([11.5, 11.5,12]);
        _inner_upper_holder(1.6);
        _inner_upper_holder(6.1);
        _inner_upper_holder(9.1);

        _inner_lower_holder(1.6);
        _inner_lower_holder(6.1);
        _inner_lower_holder(9.1);

    }



}

dripsystem_dripper_neg();
