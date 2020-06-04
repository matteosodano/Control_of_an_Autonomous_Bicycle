clear
close all

data;
figure_path = '..\Figure';
s = tf('s');

k1 = b^2/((V^2*sin(lambda)-b*g*cos(lambda))*m*a*c*sin(lambda));
k2 = b*g/(V^2*sin(lambda)-b*g*cos(lambda));

gainG_eta_T = k1*V^2/b;
numG = s^2-m*g*h/J;
denG = s^2*(s^2+k2*D*V*s/(b*J)+m*h*(k2*V^2-b*g)/(b*J));

G_eta_T = minreal(gainG_eta_T * numG/denG);
z = zero(G_eta_T);


%% first controller

dcgainSdB = -60; 
AS = 10^(dcgainSdB/20);
omegaS = 0.47 * max(real(z))/2;
MS = 2;
wS = (s/MS+omegaS)/(s+omegaS*AS);
wU = 0.08;
[K,CL,GAM,INFO] = mixsyn(G_eta_T,wS, [],[]);

K = minreal(K, [], false);

% Sensitivity and openloop functions
SF = loopsens(G_eta_T, K);
S = minreal(SF.Si, [], false);
T = minreal(SF.Ti, [], false);
L = minreal(G_eta_T*K, [], false);
Su = minreal(S*K, [], false);

gainG_delta_T = k1;
G_delta_T = minreal(k1*numG*s^2/denG);
G_psi_delta = V/(b*s);

% to simulink
[numG_eta_T, denG_eta_T] = tfdata(G_eta_T);
[numK, denK] = tfdata(K);
[numG_delta_T, denG_delta_T] = tfdata(G_delta_T);
[numG_psi_delta, denG_psi_delta] = tfdata(G_psi_delta);
sim('model04.slx', 5);
plotFig;
saveas(fig, strcat(figure_path, '\Maneuvering_1'), 'png');
saveas(fig, strcat(figure_path, '\Maneuvering_1'), 'epsc');

%% second controller
wU = 0.08;
[K,CL,GAM,INFO] = mixsyn(G_eta_T,wS, wU,[]);

K = minreal(K, [], false);

% Sensitivity and openloop functions
SF = loopsens(G_eta_T, K);
S = minreal(SF.Si, [], false);
T = minreal(SF.Ti, [], false);
L = minreal(G_eta_T*K, [], false);
Su = minreal(S*K, [], false);

gainG_delta_T = k1;
G_delta_T = minreal(k1*numG*s^2/denG);
G_psi_delta = V/(b*s);

% to simulink
[numG_eta_T, denG_eta_T] = tfdata(G_eta_T);
[numK, denK] = tfdata(K);
[numG_delta_T, denG_delta_T] = tfdata(G_delta_T);
[numG_psi_delta, denG_psi_delta] = tfdata(G_psi_delta);
sim('model04.slx', 5);
plotFig;
saveas(fig, strcat(figure_path, '\Maneuvering_2'), 'png');
saveas(fig, strcat(figure_path, '\Maneuvering_2'), 'epsc');
