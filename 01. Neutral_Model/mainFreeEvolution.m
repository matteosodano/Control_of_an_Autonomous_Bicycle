clear
close all

dataInvertedPendulum;

%% free evolution

A = [0,      1;
    g/h, 0];

t = 0:0.01:2;

init_conds = [     0,     0;         %[phi_0 dphi_0]
                pi/3,   0.1;
              -pi/36,   0.2;
               pi/18,  -0.1;
              -pi/36,  -0.2];
          

for i = 1:5
    x = bicycleEvolution(A, init_conds(i, :), t);
    figure;
    
    subplot(2, 1, 1);
    plot(t, x(:, 1), 'LineWidth', 2);
    legend('phi');
    
    subplot(2, 1, 2);
    plot(t, x(:, 2), 'LineWidth', 2);
    legend('dphi');
end