## Print bed

The OpenBuilds C-beam machine uses a [build plate](https://openbuildspartstore.com/build-plate/) as the motion platform. This build plate has a number of different sized holes and slots for mounting various accessories to it. A parametric model of the build plate was created and is provided in OpenSCAD format ("buildPlate.scad"). Some of the holes in the build plate are used for attaching motion transmission hardware in the C-beam machine, but the M3 sized screw holes along the left and right side of the plate are available for mounting a print bed.

For the print bed, the primary qualities required are planarity and stiffness so that the . A glass plate (235x235x4 mm) was chosen as the print bed. This glass plate is a standard size used by several manufacturers of 3D filament printers. Glass plates of this size may be found from a variety of retailers as a 3D printer plate. Glass is advan

In order to attach the 235x235 mm glass print bed to the 216x216 mm build plate, custom clamps were designed and 3D printed. The image below illustrates the assembled print bed without the glass plate. The build plate is shown in gray. 3D printed supports for the corners of the glass are shown in blue. These supports are attached to the build plate with M3 screws. Corner clamps are shown in red. The corner clamps are held in place with M5 screws in slots that provide a slight adjustment to allow easy removal and replacement of the glass plate.

![assembled print bed without glass](https://github.com/matthew-yates/NanodropPrinter/blob/main/images/printBed1.png)

The second image below is the fully assembled print bed with the 235x235x4 mm glass plate illustrated in white.

![assembled print bed with glass](https://github.com/matthew-yates/NanodropPrinter/blob/main/images/printBed2.png)

The parametric design file for the 3D printed parts is provided in "printBedParts.scad". In this file, all the required parts (four corner clamps, two left side supports, and two right side supports) are arranged to all producting in a single print job, as illustrated below.

![print bed parts](https://github.com/matthew-yates/NanodropPrinter/blob/main/images/printBedParts.png)
