t = phi.Time;
phi = phi.Data;
delta = delta.Data;
eta = eta.Data;
psi = psi.Data;

figure_path = '..\Figure';
font_size = 12;
label_mult = 18/font_size;
fig = figure('Position', get(0, 'Screensize'));
fig.WindowState = 'maximized';
box on

hold on 

subplot(2, 2, 1);
plot(t, phi, 'LineWidth', 2);
xlabel('t [s]', 'interpreter', 'latex');
ylabel('$\varphi$ [rad]', 'interpreter', 'latex');
ymin = min(phi, [], 'all');
ymax = max(phi, [], 'all');
ylim([ymin-0.2, ymax+0.2]);
set(gca,'LabelFontSizeMultiplier', label_mult);
set(gca,'FontSize',font_size);
grid on;



subplot(2, 2, 2);
plot(t, delta, 'LineWidth', 2);
xlabel('t [s]', 'interpreter', 'latex');
ylabel('$\delta$ [rad]', 'interpreter', 'latex');
ymin = min(delta, [], 'all');
ymax = max(delta, [], 'all');
ylim([ymin-0.2, ymax+0.2]);
set(gca,'LabelFontSizeMultiplier', label_mult);
set(gca,'FontSize',font_size);
grid on;

subplot(2, 2, 3);
plot(t, eta, 'LineWidth', 2);
xlabel('t [s]', 'interpreter', 'latex');
ylabel('$\eta$ [m]', 'interpreter', 'latex');
ymin = min(eta, [], 'all');
ymax = max(eta, [], 'all');
ylim([ymin-0.2, ymax+0.2]);
set(gca,'LabelFontSizeMultiplier', label_mult);
set(gca,'FontSize',font_size);
grid on;

subplot(2, 2, 4);
plot(t, psi, 'LineWidth', 2);
xlabel('t [s]', 'interpreter', 'latex');
ylabel('$\psi$ [rad]', 'interpreter', 'latex');
ymin = min(psi, [], 'all');
ymax = max(psi, [], 'all');
ylim([ymin-0.2, ymax+0.2]);
set(gca,'LabelFontSizeMultiplier', label_mult);
set(gca,'FontSize',font_size);
grid on;