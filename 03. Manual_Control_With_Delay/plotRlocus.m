function fig = plotRlocus(G)
k1 = 0.06;
k2 = 1.95;

p = pole(G);
z = zero(G);

r = rlocus(G);


L1 = k1*G;
T1 = minreal(L1/(1+L1));
pole1 = pole(T1);

L2 = k2*G;
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

scatter(real(p), imag(p), 100, 'x', 'LineWidth', 2, 'MarkerEdgeColor', 'k');
scatter(z, 0, 100, 'o', 'LineWidth', 2, 'MarkerEdgeColor', 'k');

scatter(real(pole1), imag(pole1), 36, 'o', 'filled', 'LineWidth', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k');
scatter(real(pole2), imag(pole2), 36, 'o', 'filled', 'LineWidth', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k');

text(real(pole1(1))+0.25, imag(pole1(1)), '$k_{T} = 0.06$', 'interpreter', 'latex', 'FontSize', font_size);
text(real(pole1(2))+0.25, imag(pole1(2)), '$k_{T} = 0.06$', 'interpreter', 'latex', 'FontSize', font_size);
text(real(pole2(1)), imag(pole2(1))+0.35, '$k_{T} = 1.95$', 'interpreter', 'latex', 'FontSize', font_size);
text(real(pole2(2)), imag(pole2(2))-0.45, '$k_{T} = 1.95$', 'interpreter', 'latex', 'FontSize', font_size);

xlabel('Real Axis', 'interpreter', 'latex');
ylabel('Imaginary Axis', 'interpreter', 'latex');
xlim([-20 1.5]);
ylim([-8 8]);
set(gca,'LabelFontSizeMultiplier', label_mult);
set(gca,'FontSize',font_size);


end

