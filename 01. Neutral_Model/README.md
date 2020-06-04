# Neutral Bicycle Model
For this model, it is assumed that <img src="https://render.githubusercontent.com/render/math?math=\lambda = \pi/2">. From the equilibrium of momenta, the model is derived

<p align="center"> <img height=60 src="https://user-images.githubusercontent.com/62264708/83767905-7824f700-a67e-11ea-9af4-59fb11b83316.PNG"> </p>

leading to the following state-space model

<p align="center"> <img height=150 src="https://user-images.githubusercontent.com/62264708/83767048-6d1d9700-a67d-11ea-8e9e-a7cd431898ea.PNG"> </p>

The model is unstable and stabilizable with a static state feedback <img src="https://render.githubusercontent.com/render/math?math=\delta = -k \varphi"> provided that <img src="https://render.githubusercontent.com/render/math?math=k > bg/V^2">.

An example of simulation is shown below, with initial conditions <img src="https://render.githubusercontent.com/render/math?math=\varphi(0) = -\pi/12"> rad and <img src="https://render.githubusercontent.com/render/math?math=\dot{\varphi}(0) = 0"> rad/s, and with <img src="https://render.githubusercontent.com/render/math?math=k = 0.63"> (red) and <img src="https://render.githubusercontent.com/render/math?math=k = 0.75"> (blue).

<p align="center"> <img height=300 src=""> </p>
