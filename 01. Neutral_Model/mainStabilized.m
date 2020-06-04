clear
close all

dataInvertedPendulum;
figure_path = '..\Figure';
s = tf('s');

G = V*D/(b*J) * (s + m*V*h/D)/(s^2 - m*g*h/J);

rlocus(G);
set(findall(gcf,'Type','line'),'LineWidth',2);
% gain k > b*g/V^2
k = [0.63, 0.75];

t = 0:0.01:10;


A = [0 1;
    m*g*h/J 0];

B = [D*V/(b*J);
    m*V^2*h/(b*J)];

C = eye(2);

D_sys =[0;
        D*V/(J*b)] ;
A_cl = {zeros(2), zeros(2)};

for j = 1:length(k)
    F = [-k(j) 0];
    A_cl{j} = A+B*F;
end


for i = 2:length(init_conds)
    for j = 1:length(k)
        % the initial conditions are [phi_0 dphi_0 delta_0], with 
        % delta_0 = -k*phi_0
        x0 = [1 0; -D*V*k(j)/(b*J) 1]^-1 * init_conds(i,:)';
        x{j} = bicycleEvolution(A_cl{j}, x0', t);
        phi{j} = x{j}(:, 1);
        delta{j} = -k(j)*phi{j};
        dphi{j} = x{j}(:, 2) + D*V/(b*J)*delta{j};
    end
    fig = plotFig(t,phi,dphi,delta);
    saveas(fig, strcat(figure_path, '\Neutral_', string(i-1)), 'png');
    saveas(fig, strcat(figure_path, '\Neutral_', string(i-1)), 'epsc');
end