module testtube() {
    union() {
        cylinder(160, 9.6, 9.6);
        scale([1, 1, 0.7]) {
            sphere(9.6);
        }
    }
}
