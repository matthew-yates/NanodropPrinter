$fa = 1;
$fs = 0.4;
$fn=100;
// Model of ink cartridge for Pilot G2 Ultra Fine (0.38 mm) gel pen
color("slategray"){
hull(){
    translate([0,0,110.5]) sphere(r=0.18);
    translate([0,0,106.5]) cylinder(h=0.1,r=1.25);}
translate([0,0,101.4]) cylinder(h=5.1,r=1.25);
translate([0,0,95.4]) cylinder(h=6.,r=1.6);
translate([0,0,90.9]) cylinder(h=4.5,r=2.25);
cylinder(h=90.9,r=3);}
// total length of cylindrical holder needed = 90.9+45 ~136 mm -