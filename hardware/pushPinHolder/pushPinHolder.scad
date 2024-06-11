$fa = 1;
$fs = 0.4;
$fn=100;

color("cornflowerblue"){
difference(){
    cylinder(h=11.2,r=5.9);
    translate([0,0,3]) cylinder(h=11,r=4.9);
    translate([-1.5,-7.5,3]) cube([3,15,12]);
    translate([0,0,-1]) cylinder(h=5,r=0.5);
    translate([0,0,2]) cylinder(h=3,r=1.);
    }
difference(){
    translate([0,0,10.2]) cylinder(h=1,r=5.9);
    translate([0,0,3]) cylinder(h=11,r=4.2);
    translate([-1.5,-7.5,3]) cube([3,15,12]);
    }
}
        
translate([20,0,0])
color("indianred"){
difference(){
    union(){
        hull(){
            translate([0,0,2]) cylinder(h=0.1,r=4.1);
            translate([0,0,7]) cylinder(h=0.1,r=4.8);
            }
        cylinder(h=120,r=4.1);
        }
    translate([0,0,5]) cylinder(h=119,r=3.25);
    }
}