# Manual Control
The presence of the front fork changed the control variable from the steer angle to the steer torque. As a first simple model, the rider can be considered as a controller that applies a torque proportional to the bicycle lean. A more realistic model takes into account the neuromuscular delay of humans. A study of motorcycles estimates it with 0.1 s. Therefore the expression of the steer angle becomes

<p align="center"> <img height=25 src="https://user-images.githubusercontent.com/62264708/83883561-ed0e3480-a743-11ea-83ea-9b52a6c38afc.PNG"> </p>

The block diagram of the system, that can easily be implemented in Simulink, is the following:

<p align="center"> <img width=700 src="https://user-images.githubusercontent.com/62264708/83883608-01523180-a744-11ea-9f7a-6d4363ca568c.png"> </p>

To have a stable system, considerations on the delay margin are necessary. A simulation is shown below; it emulates the situation in which the rider perceives that he is falling and begins to control the system after 0.1 s. The considered initial conditions are <img src="https://render.githubusercontent.com/render/math?math=\varphi(0) = \pi/6"> and <img src="https://render.githubusercontent.com/render/math?math=\dot{\varphi}(0) = \pi/12">

<p align="center"> <img width=600 src="https://user-images.githubusercontent.com/62264708/83883823-4d04db00-a744-11ea-9a60-7e1cfc89d508.png"> </p>
