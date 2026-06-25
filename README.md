This repository contains a C language POSIX-compliant interface for simulating a pick-and-place automated machine. 
It models real-world industrial behavior through:

- Finite State Machine control (IDLE, HOMING, PICKING, PLACING, ERROR etc)
- Simulated system components (actuators, vacuum gripper, sensors etc)
- Realistic timing and feedback using POSIX timers (within secondary process simulated feedback and signals).
- Modular structure suitable for both simulation and future hardware integration

Designed for testing control logic, or as a foundation for embedded automation projects.

Features

- Fully state-based operation with safe transitions
- Simulated sensors and actuators with realistic behavior
- POSIX signal handling for graceful shutdown (`SIGINT`, `SIGTERM`)
- Interactive command-line interface
- Easy-to-extend architecture
