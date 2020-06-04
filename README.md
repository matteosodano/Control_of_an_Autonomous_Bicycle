# Control of an Autonomous Bicycle

Developed by: M. Sodano, F. Roscia, G. Roggiolani (2020).

Supervisors: prof. G. Oriolo, prof. L. Lanari.

Achievement: Autonomous and Mobile Robotics exam (partial).\
<br>

Bicycles offer food for thought in modeling and control, with increasing levels of complexity. First, we presented the so-called neutral model, which considers the bicycle as a linear inverted pendulum controlled by the steering angle. Then, the front fork is introduced: this leads to a self-stabilizing system that explains why it is possible to ride a bicycle without handling the handlebar. Assuming that the control torque to the handlebar is proportional to the leaning angle, the manual control is derived. If this control torque is provided by a rider, it is realistic to take into account some kind of neuromuscular delay that affects the stabilization of the system. When riding a bicycle, we are not only interested in keeping it up-right, but we also want to follow a certain path. In the maneuvering problem, we will assume that the path is a straight line, providing a controller that achieves tracking. For all these models, the rider has been considered as a rigid body sitting on the bicycle without any degree of freedom. To overcome this simplification, we consider the case in which the rider can lean laterally: this represents another input for the system. Finally, some of these models are used to present the rear-wheel steering bicycle together with its control diffculties.

The bicycle considered, and the reference frames used, are depicted in the following images:

<p align="center"> <img width=600 src=""> </p>

<p align="center"> <img width=600 src=""> </p>

The test bicycle considered in this work is described in the following table:

<p align="center"> <img width=600 src=""> </p>

## Implementation Details
The code is written in Matlab R2018b. Simulink is also used. In the scripts `data.m`, the parameters of the biycle and the initial conditions can be changed. The total time of the simulation can be changed in Simulink.

## Reference
Åström, K. J., Klein, R. E., & Lennartsson, A. (2005). Bicycle dynamics and control. *IEEE Control Systems Magazine, 25*(4), 26-47.
