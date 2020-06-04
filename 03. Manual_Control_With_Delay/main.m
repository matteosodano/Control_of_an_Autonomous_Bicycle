clear
close all

data;
figure_path = '..\Figure';

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
E_sys = eye(2);



sys = ss(A_sys, B_sys, [1 0], 0);

fig = plotRlocus(sys);

%saveas(fig, strcat(figure_path, '\Manual_rlocus'), 'png');
%saveas(fig, strcat(figure_path, '\Manual_rlocus'), 'epsc');
k = 5;

init = [1 0; -b1*k 1]^-1 * init_conds(3,:)';

sim('model03.slx', 4);
plotFig;

