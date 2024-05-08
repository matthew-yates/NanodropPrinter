# Nanodrop Printer

Syringe dispenser for accurately placing nanoliter scale liquid droplets on surfaces.

### XYZ motion hardware

The XYZ motion platform hardware is the [OpenBuilds C-Beam Machine](https://openbuildspartstore.com/openbuilds-c-beam-machine/):

![C-Beam Machine](https://github.com/matthew-yates/NanodropPrinter/blob/main/images/cbeammachine.jpg)

Identical [NEMA-23 stepper motors](https://openbuildspartstore.com/nema-23-stepper-motor/) with peak current of 2.8 A are used for the X, Y, and Z axes.

Motion is transmitted through [8 mm diameter lead screws](https://openbuildspartstore.com/8mm-metric-acme-lead-screw/) with 8 mm lead.

Moving parts are connected to the lead screws using [anti-backlash nuts](https://openbuildspartstore.com/anti-backlash-nut-block-for-8mm-metric-acme-lead-screw/).

Stepper motors have 200 full steps per revolution. The motors are operated with 1/16 microstepping, giving 2.5 microns of linear motion per microstep.

### Electronics

A [24 V Meanwell power supply](https://openbuildspartstore.com/24v-meanwell-power-supply-bundle/) is used to provide a maximum of 14.6 A current.

The [SKR mini E3 V3](https://github.com/bigtreetech/BIGTREETECH-SKR-mini-E3) is used for controlling stepper motors. The board uses [TMC2209 stepper drivers](https://www.analog.com/media/en/technical-documentation/data-sheets/TMC2209_datasheet_rev1.08.pdf) that are capable of driving motors up to 2.8 A.  This control board has four identical stepper drivers because it is designed for use in 3D printers.  Three of the stepper drivers are used to control X, Y, and Z motion.  The fourth is used to control a stepper motor on a syringe pump used for liquid deposition.

### Syringe pump

The syringe pump hardware is taken from a model [NE-300 pump](https://www.syringepump.com/NE-300.php). The syringe plunger motion is through a platform connected to a lead screw using an anti-backlash nut.  The lead screw has a lead of 1.27 mm per revolution. The lead screw is turned using a stepper motor connected with a belt and pulley system giving a motor:screw revolution ratio of 28:15.  The NE-300 stepper motor is a [high precision NEMA-17](https://www.moonsindustries.com/series/nema-17-high-precision-hybrid-stepper-motors-b020402) with 400 full steps per revolution.  Using 1/16 microstepping results in linear movement of the syringe plunger of 0.1 microns per microstep.

### Control software

[Marlin firmware](https://marlinfw.org/) is used for motion control. The motion commands are written in [G-code](https://en.wikipedia.org/wiki/G-code) format and sent to the microcontroller on the control board via serial communication with an attached computer.
