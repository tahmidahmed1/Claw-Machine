# Claw-Machine

Created a claw machine algorithm that allows the claw to have X & Y motion, extending and retracting motion, as well as grappling capabilities using sequential circuits and an FPGA board. 

## Components Used
- Registers
- Magnitude Comparators
- Counters
- Decoders
- Multiplexers
- Inverters
- Mealy State Machines
- Moore State Machines
- FPGA Logicial Step Board

### Rules Algorithm Follows
The claw can move in both the X & Y directions simultaniously or seperately depending on the user input to get to the desired location indicated by the hexadecimal LCD display.
The claw will not move if it is in the extended position. If a user tries move in the X and/or Y motion while in the extended position, LED 0 will flash indicating a warning of the claw being extended. To determine if the claw is extended or not the user can check to see if LEDs 2 to 5 are on or off. If they are on, the claw arm is extended, but if they are off, then the claw arm is retracted.
The claw will not extend or retract if the claw is open. The user needs to close the claw before any extending or retracting motions can be performed.

All of the above conditions were set to allow for the use of state machines in my project.
