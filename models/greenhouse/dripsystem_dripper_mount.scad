use <../../template/greenhouse/dripsystem_dripper_neg.scad>
difference() {
    cube([10, 15, 15]);
    translate([-1, 4, 2])
        dripsystem_dripper_neg();
}
