# Rider Lean
So far, it has been assumed that the rider is a rigid body sitting on the rear-frame of the bicycle. To take into account the effects of leaning, we can assume that it is composed of two rigid parts: the upper part that can rotate on the vertical plane, as in the following figure, and a lower part that is fixed on the bicycle.

<p align="center"> <img height=350 src="https://user-images.githubusercontent.com/62264708/83887534-dcac8880-a748-11ea-8b47-0f06fc3971b2.png"> </p>

The self-stabilizing model can be augmented as

<p align="center"> <img height=120 src="https://user-images.githubusercontent.com/62264708/83888339-fc907c00-a749-11ea-8d0f-e90ef0664347.PNG"> </p>

where the terms with subscript *r* are referred to the driver. The system has now two inputs. Easy computations on the transfer function show that the system is asymptotically stable and with no zeros. In order to minimize the control effort and to annihilate the roll angle as fast as possible, we use an optimal control strategy, namely the optimal output regulation:

<p align="center"> <img width=600 src="https://user-images.githubusercontent.com/62264708/83887546-e0d8a600-a748-11ea-941f-0159d1b4335d.png"> </p>

A simulation is shown below, with initial conditions <img src="https://render.githubusercontent.com/render/math?math=\varphi(0) = -\pi/12"> m and <img src="https://render.githubusercontent.com/render/math?math=\dot{\varphi}(0) = 0">

<p align="center"> <img width=600 src="https://user-images.githubusercontent.com/62264708/83888113-b2a79600-a749-11ea-858a-2a4dba1cb0e7.png"> </p>
