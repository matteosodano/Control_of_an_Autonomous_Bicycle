clear
close all

dataInvertedPendulum;
figure_path = '..\Figure';
s = tf('s');

G = V*D/(b*J) * (s + m*V*h/D)/(s^2 - m*g*h/J);

p = pole(G);
z = zero(G);

r = rlocus(G);

k = [0.63, 0.75];

L1 = k(1)*G;
T1 = minreal(L1/(1+L1));
pole1 = pole(T1);

L2 = k(2)*G;
T2 = minreal(L2/(1+L2));
pole2 = pole(T2);

font_size = 12;
label_mult = 18/font_size;
fig = figure('Position', get(0, 'Screensize'));
fig.WindowState = 'maximized';
box on
hold on
grid on

blue = [0.929, 0.694, 0.125];
red = [255, 0, 0]/255;
green = [50, 205, 50]/255;
blueMatlab = [0, 0.447, 0.741];
orangeMatlab = [0.85, 0.325, 0.098];

plot(real(r(1, :)), imag(r(1, :)), 'LineWidth', 2, 'Color', green);
plot(real(r(2, :)), imag(r(2, :)), 'LineWidth', 2, 'Color', blue);

scatter(p, [0 0], 100, 'x', 'LineWidth', 2, 'MarkerEdgeColor', 'k');
scatter(z, 0, 100, 'o', 'LineWidth', 2, 'MarkerEdgeColor', 'k');

scatter(real(pole1), imag(pole1), 100, '*', 'LineWidth', 1, 'MarkerEdgeColor', blueMatlab);
scatter(real(pole2), imag(pole2), 100, '*', 'LineWidth', 1, 'MarkerEdgeColor', orangeMatlab);

xlabel('Real Axis', 'interpreter', 'latex');
ylabel('Imaginary Axis', 'interpreter', 'latex');
xlim([-20 5]);
ylim([-8 8]);
set(gca,'LabelFontSizeMultiplier', label_mult);
set(gca,'FontSize',font_size);

saveas(fig, strcat(figure_path, '\Neutral_rlocus'), 'png');
saveas(fig, strcat(figure_path, '\Neutral_rlocus'), 'epsc');