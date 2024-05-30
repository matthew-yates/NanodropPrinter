## Spring loaded pen

In order to ensure that fiducial markers are aligned with the X and Y axes of the nanodroplet printer, the printer itself was used as a pen plotter to draw lines. A variety of commercially available pens were tested for this purpose. The goal was to create very fine lines that are uniform in width. The widely available [Pilot G2 Ultra Fine](https://pilotpen.us/Product?0=40&1=29&cid=260) gel pen was selected. The manufacturer claims a line width of 380 microns. Testing showed the pen achieves relatively uniform line widths at or below 380 microns in width.  An example microscope image is show below of a hand drawn line on standard office copy paper. The microscope calibration ruler in the image measures in 100 micron increments. The image shows the pen produces a line ~300 microns in width. 

![pen line with microscope scale](https://github.com/matthew-yates/NanodropPrinter/blob/main/images/g2UltraFineExample.png)

The nanodroplet printer does not have an easy mechanism to control the force of contact of the pen in the Z-axis direction. To overcome this, a holder was developed that allows the pen tip a few millimeters of travel in the Z-axis direction. A spring is used to apply relatively constant force between the pen tip and plotting surface after contact is made.

### Fabrication and assembly

A 115.5 mm length piece is cut from [aluminum tubing](https://www.homedepot.com/p/Everbilt-36-in-x-1-2-in-x-1-16-in-Aluminum-Round-Tube-801247/204274002) having a nominal OD of 1/2 inch and wall thickness of 1/16 inch. A micrometer was used to measure the actual OD as 13 mm and ID as 9.7 mm. The aluminum tubing provides rigidity to minimize bending as the pen tip is dragged across the printing surface.

The Pilot G2 pen is disassembled to remove the refill and spring. The spring is re-used in the fabricated holder. The dimensions of the refill were measured by micrometer. A 3D model of the refill is provided in the file "ultraFineGelPen.scad".

Two parts must be 3D printed using the design file "ultraFineHolder.scad". The dimensions of these parts was determined by trial and error in order to have very right tolerances when printed using PETG filament. The library file "threadsDK.scad" created by Dan Kirshner is used for modeling threads for screwing the two parts together. The image of the 3D modeled parts is shown below.

![model used for 3D printed parts](https://github.com/matthew-yates/NanodropPrinter/blob/main/images/ultraFineHolderModel.png)

After printing these parts, the long part shown in blue is slid inside the 115.5 mm long aluminum tube. The gel pen refill is inserted so that the pen tip extends out the hole at the base. The spring is inserted after the pen refill. The smaller part shown in red is screwed onto the top to compress the spring. An image of the final assembled part is shown below.

![assembled spring loaded plotter pen](https://github.com/matthew-yates/NanodropPrinter/blob/main/images/ultraFineHolderPic.jpg)
 
