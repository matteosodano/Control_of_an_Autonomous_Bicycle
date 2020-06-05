# Rear-Wheel Steering
Using the same frames and geometry introduced in Section 1, the rear-wheel steering bicycle is described simply by reversing the sign of the velocity V in the model.

## a. Neutral Model
A proportional feedback control law is not able to stabilize the system for any value of the feedback gain and positive velocity. Difficulties in controlling this system remain even considering a more complex control law, because of the presence of a zero and a pole in the right half-plane. This kind of system can be robustly controlled if the ratio between the real part of the right half-plane zero and the real part of the right half-plane pole is large. In our case, we have that the ratio increases with V. For our test bicycle this ratio is 2.63. To simplify the control strategy, we introduce the fork.

## b. Front Fork
The presence of the fork alleviates some control difficulties, in fact the ratio is now 10.56. Again, there exists no static feedback stabilizing the system. Therefore, we handled this problem by means of the H-infinity optimization. Now, the problem is that the steer angle changes value instantaneously, that is not realistic.

<p align="center"> <img width=600 src=""> </p>

## c. Rider Lean
Introducing the rider (i.e., the second input), the system does not have any right half-plane zero, and is controllable and observable. Therefore, we decided to apply the same optimal control strategy discussed in the case of the front-wheel steering bicycle. Paying attention to the choices of the weight matrices in the cost function, it is possible to find a static state feedback control law that minimizes the cost function and asymptotically annihilates the leaning angle, providing acceptable values of the steer angle and the rider leaning angle.

<p align="center"> <img width=600 src=""> </p>
