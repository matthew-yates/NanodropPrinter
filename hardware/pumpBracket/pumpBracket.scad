$fa = 1;
$fs = 0.4;
// Openbuilds spindle mount STL model  ****comment out before generating STL****
//
color("gray"){
translate([0,0,8]) import("spindlemount.stl");}
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
color("CornflowerBlue"){
difference(){
    union(){
        // front plate
        translate([-53.5,0,0]) cube([107,116,8]);
        // left side spindle mount
        hull(){
            translate([45.5,10,68]) rotate([0,90,0]) cylinder(h=8,r=10);
            translate([45.5,0,0]) cube([8,20,8]);}
        // left side brace for rigidity
        hull(){
            translate([45.5,10,68]) rotate([0,90,0]) cylinder(h=8,r=10);
            translate([45.5,96,0]) cube([8,20,8]);}
        // right side spindle mount
        hull(){
            translate([-53.5,10,68]) rotate([0,90,0]) cylinder(h=8,r=10);
            translate([-53.5,0,0]) cube([8,20,8]);}
        // right side brace for rigidity
        hull(){
            translate([-53.5,10,68]) rotate([0,90,0]) cylinder(h=8,r=10);
            translate([-53.5,96,0]) cube([8,20,8]);}}
    // screw holes for left side of spindle mount
    translate([44.5,10,68]) rotate([0,90,0]) cylinder(h=10,r=2.1);
    translate([44.5,10,28]) rotate([0,90,0]) cylinder(h=10,r=2.1);
    // screw holes for right side of spindle mount
    translate([-54.5,10,68]) rotate([0,90,0]) cylinder(h=10,r=2.1);
    translate([-54.5,10,28]) rotate([0,90,0]) cylinder(h=10,r=2.1);
    // screw holes for front of spindle mount
    translate([36.8,10,-1]) cylinder(h=10,r=2.1);
    translate([-36.8,10,-1]) cylinder(h=10,r=2.1);
    // screw holes for syringe pump plate
    translate([-31.8,106,-1]) cylinder(h=10,r=2.1);
    translate([26.8,106,-1]) cylinder(h=10,r=2.1);
    // cut out to save filament/printing time
    translate([-45.5,20,-1]) cube([91,76,10]);}
// add braces to front plate for rigidity
hull(){
    translate([45.5,96,0]) cylinder(h=8, r=4);
    translate([-45.5,20,0]) cylinder(h=8, r=4);}
hull(){
    translate([-45.5,96,0]) cylinder(h=8, r=4);
    translate([45.5,20,0]) cylinder(h=8, r=4);}}