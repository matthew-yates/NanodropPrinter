G91 ; Set all axes to relative coordinates
G0 Z-1 F60 ; drop pen to mark origin / feed rate 1 mm/s
G0 Z1 F60 ; lift pen
G0 X1 Y1 F60 ; move to start of left side line
G0 Z-1 F60 ; drop pen
G0 Y8 F60 ; draw left side line 8 mm long
G0 Z1 F60 ; lift pen
G0 X0.5 Y0.5 F60 ; move to start of top line
G0 Z-1 F60 ; drop pen
G0 X8 F60 ; draw top line 8 mm long
G0 Z1 F60 ; lift pen
G0 X0.5 Y-0.5 F60 ; move to start of right line
G0 Z-1 F60 ; drop pen
G0 Y-8 F60 ; draw right line 8 mm long
G0 Z1 F60 ; lift pen
G0 X-0.5 Y-0.5 F60 ; move to start of bottom line
G0 Z-1 F60 ; drop pen
G0 X-8 F60 ; draw bottom line 8 mm long
G0 Z1 F60 ; lift pen
G0 X-1 Y-1 F60 ; return to starting position
M84 ; disable stepper motors
