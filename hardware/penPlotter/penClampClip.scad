$fa = 1.0;
$fs = 0.4;
translate([0,0,18.692]) rotate([180,0,0])
difference(){
    translate([-25,0,10.692]) cube([50,15,8]);
    translate([0,16,9.192]) rotate([90,0,0]) cylinder(r=6.5, h=17);
    rotate([0,45,0]) translate([0,-1,0]) cube([17,17,34]);
    rotate([0,-45,0]) translate([-17,-1,0]) cube([17,17,34]);
}