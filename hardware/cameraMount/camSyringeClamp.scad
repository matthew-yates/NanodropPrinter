$fa = 1.0;
$fs = 0.4;
// Using 25 ul syringe: maine body in clamp radius = 3.85 mm
// camera body radius = 6 mm
translate([0,16,0]) rotate([90,0,0])
difference(){
    translate([-25,0,8.]) cube([50,30,8]);
    translate([0,-1,5.445]) rotate([270,0,0]) cylinder(r=3.85, h=32);
    translate([0,-1,20.445]) rotate([270,0,0]) cylinder(r=6, h=32);
    rotate([0,45,0]) translate([0,-1,0]) cube([47,47,34]);
    rotate([0,-45,0]) translate([-47,-1,0]) cube([47,47,34]);
}