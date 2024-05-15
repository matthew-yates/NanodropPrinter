$fa = 1;
$fs = 0.4;
// illustrate syring pump plate in red
color("IndianRed"){
difference(){
union(){
    cube([92,222,2]);
    translate([4,52,2]) cube([51,72,2]);
    translate([4,52,2]) cube([51,2,54]);
    }
// NEMA 17 mounting holes 
translate([29.5,55,34]) rotate([90,0,0]) cylinder(h=4,r=12.5);
translate([15,55,49.5]) rotate([90,0,0]) cylinder(h=4,r=1.6);
translate([15,55,18.5]) rotate([90,0,0]) cylinder(h=4,r=1.6);
translate([46,55,49.5]) rotate([90,0,0]) cylinder(h=4,r=1.6);
translate([46,55,18.5]) rotate([90,0,0]) cylinder(h=4,r=1.6);
// cut out for belt/pulley connection to lead screw
translate([7,25.5,-1]) cube([28.3,25.3,4]);
// cut out for sping loaded syringe holder
translate([74.8,31.6,-1]) cylinder(h=4,r=10.0);
// #6 screw holes
translate([12.5,12.0,-1]) cylinder(h=4,r=2.1);
translate([78.5,12.0,-1]) cylinder(h=4,r=2.1);
translate([45.5,45.5,-1]) cylinder(h=4,r=2.1);
translate([16.75,211.5,-1]) cylinder(h=4,r=2.1);
translate([73.9,211.5,-1]) cylinder(h=4,r=2.1);
// M5 screw holes (must drill into plate for spindle mount)
translate([9.2,136,-1]) cylinder(h=4,r=2.7);
translate([82.8,136,-1]) cylinder(h=4,r=2.7);}}