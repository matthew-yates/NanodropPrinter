$fa = 1.0;
$fs = 0.4;
// Vertical adjustment mount
translate([0,-40,0])
color("cornflowerblue"){
    // bottom plate
    difference(){
        hull(){
            cylinder(h=5,r=6);
            translate([0,18,0]) cylinder(h=5,r=6);
            translate([-11,-6,0]) cube([5,30,5]);}
        // screw holes for top of BL touch
        translate([0,0,-1]) cylinder(h=7,r=1.6);
        translate([0,18,-1]) cylinder(h=7,r=1.6);
        // center hole on BL touch
        translate([0,9,-1]) cylinder(h=7,r=2);
        // slots for vertical adjustment
        translate([-12,-1,-1]) cylinder(h=27, r=2.1);
        translate([-12,19,-1]) cylinder(h=27, r=2.1);}
    // side plate
    difference(){
        translate([-12,-6,0]) cube([5,30,25]);
        // M5 screw hole for height adjustment
        translate([-15,9,15]) rotate([0,90,0]) cylinder(h=10,r=2.7);
        // slots for vertical adjustment
        translate([-12,-1,-1]) cylinder(h=27, r=2.1);
        translate([-12,19,-1]) cylinder(h=27, r=2.1);
}}
//Bracket to attach to pump
color("indianred"){
difference(){
    union(){
        cube([90,18,5]);
        translate([30,-55,0]) cube([30,55,5]);
        translate([35,-55,5]) rotate([-90,0,0]) cylinder(h=50,r=2);
        translate([55,-55,5]) rotate([-90,0,0]) cylinder(h=50,r=2);}
    // slot for vertical adjustment
    hull(){
    translate([45,-45,-1]) cylinder(h=7,r=2.7);
    translate([45,-10,-1]) cylinder(h=7,r=2.7);}
    // M5 screw holes for mounting
    translate([11.5,12.0,-1]) cylinder(h=7,r=2.1);
    translate([77.5,12.0,-1]) cylinder(h=7,r=2.1);}}