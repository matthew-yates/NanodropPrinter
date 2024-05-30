$fa = 1;
$fs = 0.4;
$fn=100;
include <threadsDK.scad>
//**********************************************
// holder for Pilot G2 Ultra Fine gel pen refill
//**********************************************
color("cornflowerblue"){
difference(){
    union(){
        cylinder(h=119.5,r=4.9);// accounts for shrinkage. PETG print gives 9.6 mm OD
        cylinder(h=3,r=6.5);
        translate([0,0,119.5]) metric_thread (diameter=9.8, pitch=2, length=5, thread_size=1.2, groove=true);}
    translate([0,0,2]) cylinder(h=123,r=3.25);
    translate([0,0,-1]) cylinder(h=4,r=1.35);}}
//****************************
// screw cap for end of holder
//****************************
translate([20,0,0])
color("indianred"){
difference(){
    cylinder(h=8.5,r=6.5);
    translate([0,0,7.1]) rotate([180,0,0]) metric_thread (diameter=9.8, pitch=2, length=5, thread_size=0.6, groove=true);
    translate([0,0,5.5]) cylinder(h=4,r=4.9);}
cylinder(h=7,r=3.0);}