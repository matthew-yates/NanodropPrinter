# Instructions

## 1. Set up laptop for external instrument control

Although any operating system can be use in principle, all development and testing was done using the Debian Linux operating system.  The instructions here refer to that operating system and should be applicable to other Debian-based operating systems (Ubuntu, Mint, etc.).

### 1.1 Python related packages

After installing the Linux operating system, run the following command as root to install Python related packages:

```
apt install python3-full python3-numpy python3-scipy python3-sympy python3-matplotlib python3-opencv python3-pandas python3-serial python3-spyder jupyter-notebook
```

The above commands install a number of libraries used for scientific and numerical methods, serial communication, computer vision, the Spyder IDE for editing code, and Jupyter notebook client for running code interactively.

### 1.2 Serial communication

The user needs to be added to the "dialout" group in order to gain required permissions for sending commands to the printer. Run the following command as root to do this:

```
usermod -a -G dialout $USER
```

Where "$USER" is the name of the user to be added to the dialout group.

It is also recommended that PuTTY serial console be installed by running the following command as root:

```
apt install putty
```

PuTTY is not required, but can be useful in troubleshooting. To open a serial console to the instrument, use the speed (baudrate) setting of 115200.  The serial line is normally "/dev/ttyACM0". The serial line can be confirmed by running the command "dmesg" as root immediately after plugging the instrument into a USB port.  The PuTTY console can be left running in the background in order to display responses from the instrument.  For example, sending the G-code command "M119" will cause the instrument to respond with the current logic state of all endstop switches, which will be displayed on the PuTTY console.

### 1.3 PlatformIO

The [PlatformIO](https://docs.platformio.org/en/latest/core/index.html) command line interface is used for compiling the Marlin firmware. It is recommended that PlatformIO be installed on the laptop used for instrument control to facilitate making changes to firmware settings. First, install curl by running the following command as root:

```
apt install curl
```

Next, run the following two commands as a normal user:

```
curl -fsSL -o get-platformio.py https://raw.githubusercontent.com/platformio/platformio-core-installer/master/get-platformio.py
python3 get-platformio.py
```

This installation script will create a Python virtual environment in the user home directory in which platformio is installed.  The following two commands can be run as root to provide system-wide commands "platformio" and "pio" for any user to run:

```
ln -s /home/$USER/.platformio/penv/bin/platformio /usr/bin/platformio
ln -s /home/$USER/.platformio/penv/bin/pio /usr/bin/pio
```

Where "$USER" is the name of the user account used to run the platformio installation script.

## 2. Configure and install Marlin

A fork of the Marlin firmware used for the the SKR mini E3 V3.0 board is maintained in in a separate repository:

[https://github.com/matthew-yates/Marlin](https://github.com/matthew-yates/Marlin)

This repository can be downloaded as a zip archive.  After extracting the archive, run the following two commands as normal user from the directory containing the "platformio.ini" file:

```
platformio run --target clean -e STM32G0B1RE_btt_xfer
platformio run -e STM32G0B1RE_btt_xfer
```

The resulting compiled firmware will be found in the hidden subdirectory named ".pio/build/STM32G0B1RE_btt_xfer" found in the same directory that contains the "platformio.ini" file.

The compiled firmware is named "firmware.bin". Copy the compiled firmware to a microSD card formatted with the FAT32 filesystem. Insert the microSD card into the slot on the SKR mini E3 V3.0 board. The firmware will be installed from the microSD card automatically when the board is powered on.

The forked Marlin repository linked above contains the configuration files "Configuration.h" and "Configuration_adv.h" that can be edited if firmware changes are needed.

## 3. Motion calibration

### 3.1 X and Y axis lead screw calibration and XY plane skew

Refer to the README in the directory [leadCalibration](https://github.com/matthew-yates/NanodropPrinter/tree/main/software/leadCalibration). The calibration pattern provided is plotted using a pen plotter to calibrate linear travel per rotation of the lead screw and check for skew in the XY plane.

### 3.2 Z-axis syringe pump lead screw calibration

Movement on the Z-axis and syringe pump lead screws was measured using electronic calipers.  The microsteps per mm settings in the firmware were adjusted until the actual movement matched programmed movement.


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
