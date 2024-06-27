$fa = 1;
$fs = 0.4;
// this fits a standard 1/4 inch tripod mount
include <threadsDK.scad>
cylinder(h=5, r=12);
difference(){
    cylinder(h=16, r=5.4);
    translate([0,0,5]) cylinder(h=16, r=2.8);
    translate([0,0,5.5]) english_thread (diameter=1/4, threads_per_inch=20, length=0.5);}
