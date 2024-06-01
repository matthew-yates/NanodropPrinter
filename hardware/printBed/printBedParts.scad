$fa = 1.0;
$fs = 0.4;

// corner supports for glass plate
// mounted to build plate using an M3 screw 
module cornersupport(side="left"){
    color("cornflowerblue"){
        difference(){
            union(){
                hull(){
                    cube([10,10,8]);
                    translate([5,100,0]) cylinder(h=8,r=5);
                }
                hull(){
                    cube([10,10,8]);
                    translate([70,5,0]) cylinder(h=8,r=5);
                }
                hull(){
                    translate([5,5,0]) cylinder(h=8,r=5);
                    translate([60,100,0]) cylinder(h=8,r=5);
                }
                difference(){
                    hull(){
                        translate([-15,-15,0]) cylinder(h=8,r=5);
                        translate([5,5,0]) cylinder(h=8,r=5);
                    }
                    hull(){
                        translate([-15,-15,-1]) cylinder(h=10,r=2.7);
                        translate([-9,-9,-1]) cylinder(h=10,r=2.7);
                    }
                }
            }
        translate([3.5,3.5,-1]) cylinder(h=10,r=1.4);
        }
        if(side=="left"){
            translate([4,-3,-3]) cube([20,3,11]);
            translate([-3,4,-3]) cube([3,20,11]);
        }
        else if(side=="right"){
            translate([4,-3,0]) cube([20,3,11]);
            translate([-3,4,0]) cube([3,20,11]);
        }
    }
}

// corner clamps for glass plate
// held in place with M5 screw
// slot provides slight adjustment to remove/replace glass
module cornerclamp(){
    color("indianred"){
        difference(){
            union(){
                hull(){
                    translate([-5,-5,0]) cube([5,30,4]);
                    translate([-5.5,-5.5,0]) cylinder(h=4,r=5);
                }
                hull(){
                    translate([0,-5,0]) cube([25,5,4]);
                    translate([-5.5,-5.5,0]) cylinder(h=4,r=5);
                }
            }
            translate([-4,-4,-1]) cylinder(h=6,r=2.7);
        }
    }
}

// parts for printing (run print job twice)
translate([40,70,0]) rotate([0,0,180]) cornerclamp();
translate([20,30,0]) rotate([0,0,0]) cornerclamp();
translate([155,20,8]) rotate([0,180,0]) cornersupport(side="left");
translate([70,130,0]) rotate([0,0,-150]) cornersupport(side="right");
