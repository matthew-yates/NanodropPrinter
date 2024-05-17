$fa = 1.0;
$fs = 0.4;
translate([11,-60,0])
// Vertical adjustment mount
color("cornflowerblue"){
    // bottom plate
    difference(){
        hull(){
            cylinder(h=5,r=6);
            translate([0,48,0]) cylinder(h=5,r=6);
            translate([-11,-6,0]) cube([5,60,5]);}
        // screw holes for top of BL touch
        translate([0,30,-1]) cylinder(h=7,r=1.6);
        translate([0,48,-1]) cylinder(h=7,r=1.6);
        // center hole on BL touch
        translate([0,39,-1]) cylinder(h=7,r=2);
        // slots for vertical adjustment
        translate([-12,-1,-1]) cylinder(h=27, r=2.1);
        translate([-12,19,-1]) cylinder(h=27, r=2.1);}
    // side plate
    difference(){
        translate([-12,-6,0]) cube([5,30,20]);
        // M5 screw hole for height adjustment
        translate([-15,9,12]) rotate([0,90,0]) cylinder(h=10,r=2.7);
        // slots for vertical adjustment
        translate([-12,-1,-1]) cylinder(h=27, r=2.1);
        translate([-12,19,-1]) cylinder(h=27, r=2.1);
}}
//Bracket to attach to pump
color("indianred"){
difference(){
    union(){
        cube([90,20,5]);
        translate([57,-55,0]) cube([30,55,5]);
        translate([62,-55,5]) rotate([-90,0,0]) cylinder(h=53,r=2);
        translate([82,-55,5]) rotate([-90,0,0]) cylinder(h=53,r=2);}
    // slot for vertical adjustment
    hull(){
    translate([72,-49,-1]) cylinder(h=7,r=2.7);
    translate([72,-9,-1]) cylinder(h=7,r=2.7);}
    // M5 screw holes for mounting
    translate([11.25,11.7,-1]) cylinder(h=7,r=2.7);
    translate([78.75,11.7,-1]) cylinder(h=7,r=2.7);}}