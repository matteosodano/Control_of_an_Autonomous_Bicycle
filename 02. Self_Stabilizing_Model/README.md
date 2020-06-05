# Self-Stabilizing Model
For this model, the front fork is introduced. The steer angle changes, becoming

<p align="center"> <img height=25 src="https://user-images.githubusercontent.com/62264708/83881982-c18a4a80-a741-11ea-80cf-8bdf4a69d376.PNG"> </p>

where

<p align="center"> <img height=55 src="https://user-images.githubusercontent.com/62264708/83881984-c18a4a80-a741-11ea-88b1-2b9c9e975f85.PNG"> </p>

This explains why it is possible to ride a bicycle without handling the bar, since the steer angle changes also when the leaning angle changes. The state-space model is obtained from the ode (again, equilibrium of momenta):

<p align="center"> <img height=120 src="https://user-images.githubusercontent.com/62264708/83881985-c222e100-a741-11ea-8745-776081aaa032.PNG"> </p>

<p align="center"> <img height=40 src="https://user-images.githubusercontent.com/62264708/83881988-c222e100-a741-11ea-963f-8e6b65aa4797.PNG"> </p>

<p align="center"> <img height=150 src="https://user-images.githubusercontent.com/62264708/83881990-c2bb7780-a741-11ea-9634-3e1040d53967.PNG"> </p>

The system is stable if and only if

<p align="center"> <img height=70 src="https://user-images.githubusercontent.com/62264708/83881981-c0f1b400-a741-11ea-96ba-4fcfecd2a8aa.PNG"> </p>

An example of simulation is shown below, with initial conditions <img src="https://render.githubusercontent.com/render/math?math=\varphi(0) = -\pi/12"> and <img src="https://render.githubusercontent.com/render/math?math=\dot{\varphi}(0) = 0">.

<p align="center"> <img width=600 src="https://user-images.githubusercontent.com/62264708/83881991-c2bb7780-a741-11ea-96d1-745facfb5a69.png"> </p>
