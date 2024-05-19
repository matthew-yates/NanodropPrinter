### Motion control firmware

The Marlin firmware configuration and compiled firmware for the the SKR mini E3 V3.0 board is maintained in in a separate repository:

[https://github.com/matthew-yates/Marlin2.1.2.2_SKRminiE3V3.0](https://github.com/matthew-yates/Marlin2.1.2.2_SKRminiE3V3.0)

### Camera calibration

A USB microscope is used to measure distances from images.  Accurate distances are needed for calculating XY coordinates for target printing locations.  Before the camera can be used for measurements, it must be calibrated by calculating the distance between two points on an image in pixels separated by a known distance in millimeters. A microscope calibration pattern is used for this purpose.

The Jupyter notebook file "cameraCalibration.ipynb" contains detailed annotated code for calibrating the camera. The following steps are involved:

1. The USB microscope is focused on the calibration pattern and an image of this pattern is saved using OpenCV. 
2. Two x,y pixel coordinates on the image then selected via mouse click. These points have a know distance in millimeters between them from the calibration pattern.
3. The distance between points in pixels is calculated.
4. Five repeated calibration measurements are taken, and the mean, maximum, minimum and standard deviation of the measured pixels per mm is reported.
5. The mean value is stored in a text file for future use as a conversion factor between pixels and millimeters.

The image below is an example image taken after clicking two calibration points.  In this case, a 5 mm calibration distance was selected and the microscope image was 1600x1200 pixels.

