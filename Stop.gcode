; -- END GCODE --
G91               ;set to relative positioning
G1 Z+10 E-10 F{travel_speed} ;move Z up a bit and retract filament even more
G1 E-20 F300            ;retract the filament a bit to release some of the pressure
G90                     ;set to absolute positioning
G1 X0 Y180 F{travel_speed}        ;expose the platform
M120                    ;Enable endstop detection
M84                     ;turn off steppers
M104 T1 S0                 ;set extruder temperature to zero (turned off)
M104 T0 S0                 ;set extruder temperature to zero (turned off)
M190 R50
M190 S0.00000
M109 T1 S0.00000
M109 T0 S0.00000
M300 S2637 P117
G4 P35.1
G4 P117
M300 S2093 P117
G4 P35.1
M300 S2349 P117
G4 P35.1
M300 S1976 P117
G4 P35.1
G4 P117
G4 P117
M300 S2093 P117
G4 P35.1
G4 P117
G4 P117
M300 S1568 P117
G4 P35.1
G4 P117
G4 P117
M300 S1319 P117
G4 P35.1
G4 P117
G4 P117
M300 S1760 P117
G4 P35.1
G4 P117
M300 S1976 P117
G4 P35.1
G4 P117
M300 S1865 P117
G4 P35.1
M300 S1760 P117
G4 P35.1
G4 P117
M300 S1568 P156
G4 P46.8
M300 S2637 P156
G4 P46.8
M300 S3136 P156
G4 P46.8
M300 S3520 P117
G4 P35.1
G4 P117
M300 S2794 P117
G4 P35.1
M300 S3136 P117
G4 P35.1
G4 P117
M300 S2637 P117
G4 P35.1
G4 P117
M300 S2093 P117
G4 P35.1
M300 S2349 P117
G4 P35.1
M300 S1976 P117
G4 P35.1
G4 P117
G4 P117