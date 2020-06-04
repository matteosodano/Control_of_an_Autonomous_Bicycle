clear
close all
data;

clear
close all

data;

s = tf('s');
k1 = b^2/((V^2*sin(lambda)-b*g*cos(lambda))*m_br*a_br*c*sin(lambda));
k2 = b*g/(V^2*sin(lambda)-b*g*cos(lambda));

a1 = -D*V*k2/(b*J_br);
a2 = ((m_br*V^2*h_br*k2)/b - m_br*g*h_br)/J_br;
a3 = -D*V*k1/(b*J_br);
a4 = m_br*V^2*h_br*k1/(b*J_br);
a5 = -J_r/J_br;
a6 = m_r*g*h_r/J_br;

A_sys = [  0   1;
         -a2 -a1];

B1_sys = A_sys * [0; a3] + [0; a4];
B2_sys = [0; a6] + A_sys^2 * [0; a5];
B_sys = [B1_sys B2_sys];

C_sys = [1 0];

D_sys = [0 a5];

sys = ss(A_sys, B_sys, C_sys, D_sys);


G = minreal(tf(sys));
z = tzero(G);
p = pole(G);

Q = 1;
R = [1    0;
        0 80];
N = 0;
[K,S,e] = lqry(sys,Q,R,N);

sys_CL = ss(A_sys-B_sys*K, [], C_sys-D_sys*K, []);

T = [1-a5*K(2, 1) -a5*K(2, 2); 
               1           0];
           
x_init = T^-1*init_conds(2, :)';

sim('model06d.slx', 6);
plotFig;
saveas(fig, strcat(figure_path, '\Rear_Rider_Lean'), 'png');
saveas(fig, strcat(figure_path, '\Rear_Rider_Lean'), 'epsc');
