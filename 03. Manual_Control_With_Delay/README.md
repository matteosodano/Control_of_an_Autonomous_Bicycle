# Manual Control
The presence of the front fork changed the control variable from the steer angle to the steer torque. As a first simple model, the rider can be considered as a controller that applies a torque proportional to the bicycle lean. A more realistic model takes into account the neuromuscular delay of humans. A study of motorcycles estimates it with 0.1 s. Therefore the expression of the steer angle becomes

<p align="center"> <img src=""> </p>

The block diagram of the system, that can easily be implemented in Simulink, is the following:

<p align="center"> <img src=""> </p>

To have a stable system, considerations on the delay margin are necessary. A simulation is shown below; it emulates the situation in which the rider perceives that he is falling and begins to control the system after 0.1 s. The considered initial conditions are 

<p align="center"> <img src=""> </p>
