# Rider Lean
So far, it has been assumed that the rider is a rigid body sitting on the rear-frame of the bicycle. To take into account the effects of leaning, we can assume that it is composed of two rigid parts: the upper part that can rotate on the vertical plane, as in the following figure, and a lower part that is fixed on the bicycle.

<p align="center"> <img src=""> </p>

The self-stabilizing model can be augmented as

<p align="center"> <img src=""> </p>

where the terms with subscript *r* are referred to the driver. The system has now two inputs. Easy computations on the transfer function show that the system is asymptotically stable and with no zeros. In order to minimize the control effort and to annihilate the roll angle as fast as possible, we use an optimal control strategy, namely the optimal output regulation:

<p align="center"> <img src=""> </p>

A simulation is shown below, with initial conditions <img src="https://render.githubusercontent.com/render/math?math=\varphi(0) = -\pi/12"> m and <img src="https://render.githubusercontent.com/render/math?math=\dot{\varphi}(0) = 0">

<p align="center"> <img src=""> </p>
