# Maneuvering
Imagine a situation in which the bicycle is driving along a straight path on the <img src="https://render.githubusercontent.com/render/math?math=\xi">-axis, and a car suddenly appears on the right. The rider must apply a torque on the handlebar to steer away from the vehicle reaching, say, <img src="https://render.githubusercontent.com/render/math?math=\eta = 2"> m as fast as possible without losing stability. We need a dynamic controller to generate the needed torque <img src="https://render.githubusercontent.com/render/math?math=T">.

The transfer function from the torque to <img src="https://render.githubusercontent.com/render/math?math=\eta"> is easily found to be

<p align="center"> <img src=""> </p>

A controller based on the H infinity optimization is used. Results are shown in the following:

<p align="center"> <img src=""> </p>

Notice that there is an undershoot along <img src="https://render.githubusercontent.com/render/math?math=\eta">, caused by the non-minimum phase zero of the system. This corresponds to the fact that the rider should first steer and lean in the direction of the car, and then counter-steer to turn away from the obstacle. This inverse response behavior is a common cause of motorcycles accidents.
