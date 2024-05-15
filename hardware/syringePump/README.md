## Syringe pump

The hardware for liquid dispensing is taken from a model [NE-330](https://www.syringepump.com/NE-300.php) syringe pump, illustrated below.

![NE-300 syringe pump](https://github.com/matthew-yates/NanodropPrinter/blob/main/images/ne300.jpg)

The the pump is first fully disassembled. After removing all of the parts mounted to the top cover, it is cut along the approximate lines illustrated in green in the image below.

![NE-300 syringe pump](https://github.com/matthew-yates/NanodropPrinter/blob/main/images/ne300_2.jpg)

The portion of the top cover cut out is a rectangle having dimensions of 92 mm by 222 mm. After cutting off the two screw tabs, the bottom side is flat.  An image of the cut out portion is shown below.  

![pump plate image](https://github.com/matthew-yates/NanodropPrinter/blob/main/images/pumpplate.jpg)

The two screw tabs used to attach the top cover to the bottom cover were cut off.  This plate has a NEMA-17 stepper motor mount, large rectangular opening for the stepper belt/pulley connection between the stepper motor and the lead screw, and a large circular opening for the spring loaded syringe holder.  In addition, there are five small screw holes in the plate from the manufacturer.  These screw holes are used to attach parts to the plate using #6 coarse grain machine screws.  The NEMA-17 stepper is mounted to the motor mount using four M3 screws.

Not shown on the above image of the plate are two additional screw holes required for attaching the plate to the spindle mount on the XYZ positioning system.  These holes must allow M5 screws to pass through (~5.5 mm in diameter).  They are locate 9.2 mm from each long edge of the rectangle.  A 3D model of the plate was created in OpenSCAD that has precise dimensions of this plate.  The OpenSCAD code in this repository has the precise locations of all screw holes.  A rendering of this model is shown below.

![pump plate 3D model](https://github.com/matthew-yates/NanodropPrinter/blob/main/images/pumpPlate.png)
