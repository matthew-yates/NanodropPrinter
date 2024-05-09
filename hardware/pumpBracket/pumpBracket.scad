$fa = 1;
$fs = 0.4;
// illustrate syring pump plate in red (comment out before generating STL)
//color("IndianRed"){
//difference(){
//union(){
//    cube([92,222,2]);
//    translate([4,52,2]) cube([51,72,2]);
//    translate([4,52,2]) cube([51,2,54]);
//    }
// NEMA 17 mounting holes 
//translate([29.5,55,34]) rotate([90,0,0]) cylinder(h=4,r=12.5);
//translate([15,55,49.5]) rotate([90,0,0]) cylinder(h=4,r=1.6);
//translate([15,55,18.5]) rotate([90,0,0]) cylinder(h=4,r=1.6);
//translate([46,55,49.5]) rotate([90,0,0]) cylinder(h=4,r=1.6);
//translate([46,55,18.5]) rotate([90,0,0]) cylinder(h=4,r=1.6);
// cut out for belt/pulley connection to lead screw
//translate([6,25,-1]) cube([29,25,4]);
// cut out for sping loaded syringe holder
//translate([76,30,-1]) cylinder(h=4,r=9.5);
// M5 screw holes
//translate([12,11.7,-1]) cylinder(h=4,r=1.6);
//translate([79.5,11.7,-1]) cylinder(h=4,r=1.6);
//translate([16,212,-1]) cylinder(h=4,r=1.6);
//translate([73.8,212,-1]) cylinder(h=4,r=1.6);
//translate([45.75,45,-1]) cylinder(h=4,r=1.6);}}
//
// measurements on spindle mount:
//  width = 90.8 mm
//  depth = 85.1 mm
//  height = 20.0 mm
//  diameter of screw holes = 4.2 mm
//  spacing between center of front screw holes = 73.6 mm
//  depth of first left/right screw hole from front = 20.0 mm
//  depth of second left/right screw hole from front = 60.0 mm
//
// Openbuilds spindle mount STL model  ****comment out before generating STL****
//
//color("gray"){
//translate([45.9,126,10]) import("spindlemount.stl");}
//
color("CornflowerBlue"){
difference(){
union(){
    // top plate
    translate([-7.5,202,2]) cube([107,20,8]);
    // middle plate
    translate([-7.5,126,2]) cube([107,20,8]);
    // bottom plate
    translate([-7.5,0,2]) cube([107,18,8]);
    // left plate
    translate([-7.5,0,2]) cube([8,222,8]);
    // right plate
    translate([91.5,0,2]) cube([8,222,8]);
    // braces for rigidity
    hull(){
        translate([0,202,2]) cylinder(h=8, r=4);
        translate([91.5,146,2]) cylinder(h=8, r=4);}
    hull(){
        translate([0,146,2]) cylinder(h=8, r=4);
        translate([91.5,202,2]) cylinder(h=8, r=4);}
    // left side spindle mount
    hull(){
        translate([-7.5,136,70]) rotate([0,90,0]) cylinder(h=8,r=10);
        translate([-7.5,126,2]) cube([8,20,8]);}
    // right side spindle mount
    hull(){
        translate([91.5,136,70]) rotate([0,90,0]) cylinder(h=8,r=10);
        translate([91.5,126,2]) cube([8,20,8]);}
    // top left side brace
    hull(){
        translate([-7.5,136,70]) rotate([0,90,0]) cylinder(h=8,r=10);
        translate([-7.5,221,2]) cube([8,1,8]);}
    // bottom left side brace
    hull(){
        translate([-7.5,136,70]) rotate([0,90,0]) cylinder(h=8,r=10);
        translate([-7.5,0,2]) cube([8,1,8]);}
    // top right side brace
    hull(){
        translate([91.5,136,70]) rotate([0,90,0]) cylinder(h=8,r=10);
        translate([91.5,221,2]) cube([8,1,8]);}
    // bottom right side brace
    hull(){
        translate([91.5,136,70]) rotate([0,90,0]) cylinder(h=8,r=10);
        translate([91.5,0,2]) cube([8,1,8]);}}
// M5 screw holes for pump
translate([12,11.7,1]) cylinder(h=10,r=1.6);
translate([79.5,11.7,1]) cylinder(h=10,r=1.6);
translate([16,212,1]) cylinder(h=10,r=1.6);
translate([73.8,212,1]) cylinder(h=10,r=1.6);
translate([45.75,45,1]) cylinder(h=10,r=1.6);
// M5 screw holes for fron of spindle mount 
translate([9.2,136,1]) cylinder(h=10,r=1.6);
translate([82.8,136,1]) cylinder(h=10,r=1.6);
// screw holes for left side of spindle mount
translate([-8.5,136,70]) rotate([0,90,0]) cylinder(h=10,r=2.1);
translate([-8.5,136,30]) rotate([0,90,0]) cylinder(h=10,r=2.1);
// screw holes for right side of spindle mount
translate([90.5,136,70]) rotate([0,90,0]) cylinder(h=10,r=2.1);
translate([90.5,136,30]) rotate([0,90,0]) cylinder(h=10,r=2.1);
}}