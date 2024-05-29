## Z-axis hardware

The Z-axis linear actuator of the Openbuilds C-beam machine has a spindle mount for attaching tools when used as a CNC machine.  This spindle mount is used to attached a syringe pump and BL-touch sensor.  The fully assembled Z-axis is illustrated below.

![Assembled BL-touch bracket](https://github.com/matthew-yates/NanodropPrinter/blob/main/images/ZaxisAssembled.png)

The image shows the approximate geometry of a mounted syringe and BL-touch sensor.  Folders in this hardware section of the repository include:

* [syringePump](https://github.com/matthew-yates/NanodropPrinter/tree/main/hardware/syringePump): Instructions with photographs for creating pump mounting plate from a model NE-300 syringe pump.
* [pumpBracket](https://github.com/matthew-yates/NanodropPrinter/tree/main/hardware/pumpBracket): Images, instructions, and OpenSCAD design files for 3D printed bracket for attaching syringe pump plate to spindle mount.
* [BLtouchMount](https://github.com/matthew-yates/NanodropPrinter/tree/main/hardware/BLtouchMount): Height adjustable mount for BL-touch sensor. Instructions and design files for 3D printing.

## Spring loaded plotter pen

In order to create fiducial markers for printing, the nanodroplet printer is used as a pen plotter. Fiducial markers are plotted on paper fixed to the glass platter printing surface. This approach ensures that the fiducial markers are aligned with the X and Y axes of the nanodroplet printer.

The widely available Pilot G2 Ultra Fine gel pen was selected for plotting. The refill cartridge was removed from the pen and used in a custom built holder that uses a spring to provide relatively constant force of the pen tip on paper. Design files and instructions for creating the spring loaded plotter pen are found in: [penPlotter](https://github.com/matthew-yates/NanodropPrinter/tree/main/hardware/penPlotter).
