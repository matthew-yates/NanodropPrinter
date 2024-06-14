### Motion control firmware

The Marlin firmware configuration and compiled firmware for the the SKR mini E3 V3.0 board is maintained in in a separate repository:

[https://github.com/matthew-yates/Marlin](https://github.com/matthew-yates/Marlin)

### Camera calibration

A USB microscope is used to measure distances from images.  Accurate distances are needed for calculating XY coordinates for target printing locations.  Before the camera can be used for measurements, it must be calibrated by calculating the distance between two points on an image in pixels separated by a known distance in millimeters. A microscope calibration pattern is used for this purpose.

The Jupyter notebook file "cameraCalibration.ipynb" contains detailed annotated code for calibrating the camera. The following steps are involved:

1. The USB microscope is focused on the calibration pattern and an image of this pattern is saved using OpenCV. 
2. Two x,y pixel coordinates on the image then selected via mouse click. These points have a known distance in millimeters between them from the calibration pattern.
3. The distance between points in pixels is calculated.
4. Five repeated calibration measurements are taken, and the mean, maximum, minimum and standard deviation of the measured pixels per mm is reported.
5. The mean value is stored in a text file for future use as a conversion factor between pixels and millimeters.

The image below is an example image taken after clicking two calibration points.  In this case, a 5 mm calibration distance was selected and the microscope image was 1600x1200 pixels.

![example calibration image](https://github.com/matthew-yates/NanodropPrinter/blob/main/images/calExample.png)

### Fiducial marker

A fiducial marker is needed for alignment of the camera with the printer as well as accurately measuring locations of desired droplet deposition locations.  A variety of marker patterns are suitable for this purpose as long as there is a clear point that can be selected as the origin for x,y coordinates, as well as vertical and horizontal lines that define the directions of the printer axes.  An example marker is shown below.

![example fiducial marker](https://github.com/matthew-yates/NanodropPrinter/blob/main/images/fiducial.png)

This marker has 4 lines, 8 mm x 0.2 mm each that are arranged to the edges of a 9 mm by 9 mm square shape.  The 9x9 mm^2 box defines an area in which small objects may be placed for selecting and measuring printing locations.  There is a small circle on the lower left that serves to mark the origin.  The above image is in scalable vector graphics format in the file "alignPattern.svg".

### Printer alignment with fiducial marker

The vertical and horizontal lines of the fiducial marker must be aligned with the y-axis and x-axis direntions of movement of the printer nozzle. The easiest way to achieve this is by using the printer itself as a plotter to create the fiducial marker. The syringe pump has a spring loaded clamp for holding a syringe. Instead of the syringe, clamp a fineliner marker or ultrafine technical pen.  Next, use the G-code file "alignMarker.gcode" to send motion commands needed to print the above pattern.  Before running the G-code commands, the marker should be placed in a starting position 1 mm above the target location of the origin dot. The print head is returned to this position after plotting the pattern.

### Camera alignment with the fiducial marker

Alignment of the camera image with the directions of the fiducial marker plotted by the printer is achieved by manually rotating the camera.  After it is aligned, the camera is clamped into position. To facilitate alignment, the Jupyter notebook "cameraAlignment.ipynb" can be used. The Python+OpenCV script places vertical and horizontal lines on the camera video feed. An example of camera alignment is shown in the image below.

![example camera alignment](https://github.com/matthew-yates/NanodropPrinter/blob/main/images/fiducial2.png)

In this image, the blue lines are parallel to the fiducial marker lines. There is also a small silicon-based photonic chip in this image that is the target object for subsequent printing.
