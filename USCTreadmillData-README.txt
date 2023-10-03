README for USC Walking Kinematics Treadmill Control Data (2022)

From: A public dataset of overground and treadmill walking kinematics and kinetics in healthy individuals

Data Reorganization: University of Southern California, Chan Division of Occupational Science and Occupational Therapy

Data for N=42 participants (24 young adults and 18 older adults) was included in the folder. 


Data Collection Location: Laboratory of Biomechanics and Motor Control at the Federal University of ABC, Brazil
Collected using a motion-capture system with 12 cameras, five force platforms embedded in the floor, and a dual-belt, instrumented treadmill
Kinematic (150 Hz) and data on ground-reaction force (300 Hz) data were recorded using a motion capture system
(Cortex 6.0; Motion Analysis, Santa Rosa, CA, USA) and instrumented treadmill (FIT; Bertec, Columbus, OH, USA).
 
Participants walked on the treadmill for 90 s at eight different controlled speeds (40%, 55%, 70%, 85%, 100%, 115%, 130%, and 145% of the self-selected dimensionless speed (Froude number)) in a randomized order. 

This MATLAB file contains the following files:

GRF_DATA
File contains a 42x8 table: columns represent the eight trials per participant self-selected speed, rows represent participant. External forces were collected using force plates in instrumented treadmill.
The forces (Fx, Fy, and Fz in Newtons), the center of pressure (COPx, COPy, and COPz in mm), and the free moment about the vertical axis (Ty in Nm).


MARK_DATA
File contains a 42x8 table: columns represent the eight trials per participant self-selected speed, rows represent participant. Each cell contains data on 3D coordinates of 28 markers for 30 seconds.


SPEEDS
File contains a 42x8 table: columns represent the eight trials per participant self-selected speed, rows represent participant


STAT_DATA
File contains a 42x2 table: Each cell in the first column contains the 3D coordinates of 28 markers in static trial (the standing anatomical-calibration trial) for each of the 42 participants.
Rows with more than one cell contain a Static2 trial which was performed due to technical issues in the first trial.