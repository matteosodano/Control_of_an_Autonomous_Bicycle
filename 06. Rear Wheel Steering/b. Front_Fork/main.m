%% free evolution
clear
close all

data;

s = tf('s');

k1 = b^2/((V^2*sin(lambda)-b*g*cos(lambda))*m*a*c*sin(lambda));
k2 = b*g/(V^2*sin(lambda)-b*g*cos(lambda));

a1 = -D*V*k2*sin(lambda)/(b*J);
a2 = m/J*((V^2*h-g*a*c)*k2*sin(lambda)/b-g*h);
b1 = -D*V*k1*sin(lambda)/(b*J);
b2 = m/(b*J)*(V^2*h-g*a*c)*k1*sin(lambda);

A_sys = [0    1;
        -a2 -a1];
B_sys = [b1;
         -a1*b1+b2];
C_sys = [1 0];

D_sys = 0;

sys = ss(A_sys, B_sys, C_sys, D_sys);


G = minreal(tf(sys));
z = zero(G);
p = pole(G);
% figure;
% rlocus(sys);
% 
% figure;
% bode(sys);
stop
dcgainSdB = -60; 
AS = 10^(dcgainSdB/20);
omegaS = max(real(z))/120;
MS = 2;
wS = (s/MS+omegaS)/(s+omegaS*AS);
% wU = 1;
wU = 0.01;
[K,CL,GAM,INFO] = mixsyn(G,wS, wU, []);
stop
K = minreal(K, [], false);
[numK, denK] = tfdata(K);
% Sensitivity and openloop functions
SF = loopsens(G, K);
S = minreal(SF.Si, [], false);
T = minreal(SF.Ti, [], false);
L = minreal(G*K, [], false);
Su = minreal(S*K, [], false);

sim('model06c.slx', 6);
plotFig;
saveas(fig, strcat(figure_path, '\Rear_Fork'), 'png');
saveas(fig, strcat(figure_path, '\Rear_Fork'), 'epsc');
