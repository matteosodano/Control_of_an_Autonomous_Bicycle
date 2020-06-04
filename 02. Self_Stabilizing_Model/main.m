clear
close all

data;
figure_path = '..\Figure';
%% Stability conditions
Vc = sqrt(b*g*cot(lambda));
fprintf("Stability condition 1: V > Vc \n\tV = %f \n\tVc = %f\n\n", V, Vc);
fprintf("Stability condition 2: b*h > a*c*tan(lambda) \n\tb*h = %f \n\ta*c*tan(lambda) = %f\n", b*h, a*c*tan(lambda));


%% free evolution
s = tf('s');

k1 = b^2/((V^2*sin(lambda)-b*g*cos(lambda))*m*a*c*sin(lambda));
k2 = b*g/(V^2*sin(lambda)-b*g*cos(lambda));

a1 = D*V*k2*sin(lambda)/(b*J);
a2 = m/J*((V^2*h-g*a*c)*k2*sin(lambda)/b-g*h);
b1 = D*V*k1*sin(lambda)/(b*J);
b2 = m/(b*J)*(V^2*h-g*a*c)*k1*sin(lambda);

A_sys = [0    1;
        -a2 -a1];
B_sys = [b1;
         -a1*b1+b2];
C_sys = eye(2);

D_sys = [0;
         b1];

sys = ss(A_sys, B_sys, C_sys, D_sys);

t = 0:0.01:5;        

for i = 2:length(init_conds)
    x = bicycleEvolution(sys, init_conds(i,:), t);
    delta = -k2*x(:, 1);
    
    fig = plotFig(t,x,delta);
    saveas(fig, strcat(figure_path, '\Self_Stabilizing_', string(i-1)), 'png');
    saveas(fig, strcat(figure_path, '\Self_Stabilizing_', string(i-1)), 'epsc');
end