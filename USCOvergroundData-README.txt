README for USC Walking Kinematics Overground Control Data (2022)

From: 
A public dataset of overground and treadmill walking kinematics and kinetics in healthy individuals

Data Reorganization: 
University of Southern California, Division of Biokinesiology and Physical Therapy
Data for N=42 participants (24 young adults and 18 older adults) was included in the folder. 


Data Collection Location: 
Laboratory of Biomechanics and Motor Control at the Federal University of ABC, Brazil

Collecttion: 
A motion-capture system with 12 cameras, five force platforms embedded in the floor, and a dual-belt, instrumented treadmill
Kinematic (150 Hz) and data on ground-reaction force (300 Hz) data were recorded using a motion capture system
(Cortex 6.0; Motion Analysis, Santa Rosa, CA, USA).
For overground data the 5 force plates are recorded separately in each file and overlap slightly to create the full walking trial. For the time that the participant is not walking on the force plate, the data is represented by 0.
 
Participants walked over 5 force plates barefoot for around 3 - 5s per trial. Multiple trials were collected for each participants at each speed Slow (S), Comfortable (C), and Fast (F) at varying numbers. (Each participant had a different number of trials at each speed)

This MATLAB file contains the following files:

GRF_SLOW
File contains a 42x20 table: columns represent the number of slow trials per participant, rows represent participant. The forces (Fx, Fy, and Fz in Newtons), the center of pressure (COPx, COPy, and COPz in mm), and the free moment about the vertical axis (Ty in Nm).

MARK_SLOW
File contains a 42x20 table: Each cell contains the 3D coordinates of 28 markers in static trial for each of the 42 participants. There are varying numbers of columns per participant depending on the number of trials they did. Each cell has data for approximately 3s - 5s.

GRF_COMF
File contains a 42x21 table: columns represent the number of comfortable trials per participant, rows represent participant. The forces (Fx, Fy, and Fz in Newtons), the center of pressure (COPx, COPy, and COPz in mm), and the free moment about the vertical axis (Ty in Nm).

MARK_COMF
File contains a 42x10 table: Each cell contains the 3D coordinates of 28 markers in static trial for each of the 42 participants. There are varying numbers of columns per participant depending on the number of trials they did. Each cell has data for approximately 3s - 5s.

GRF_FAST
File contains a 42x23 table: columns represent the number of fast trials per participant, rows represent participant. The forces (Fx, Fy, and Fz in Newtons), the center of pressure (COPx, COPy, and COPz in mm), and the free moment about the vertical axis (Ty in Nm).

MARK_FAST
File contains a 42x2 table: Each cell contains the 3D coordinates of 28 markers in static trial for each of the 42 participants. There are varying numbers of columns per participant depending on the number of trials they did. Each cell has data for approximately 3s - 5s.