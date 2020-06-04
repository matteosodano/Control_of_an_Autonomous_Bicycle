t = varphi.Time;
varphi = varphi.Data;
dvarphi = dvarphi.Data;
delta = delta.Data;


figure_path = '..\..\Figure';
font_size = 12;
label_mult = 18/font_size;
fig = figure('Position', get(0, 'Screensize'));
fig.WindowState = 'maximized';
box on

hold on 

subplot(3, 1, 1);
plot(t, varphi, 'LineWidth', 2);
xlabel('t [s]', 'interpreter', 'latex');
ylabel('$\varphi$ [rad]', 'interpreter', 'latex');
ymin = min(varphi, [], 'all');
ymax = max(varphi, [], 'all');
ylim([ymin-0.2, ymax+0.2]);
set(gca,'LabelFontSizeMultiplier', label_mult);
set(gca,'FontSize',font_size);
grid on;

subplot(3, 1, 2);
plot(t, dvarphi, 'LineWidth', 2);
xlabel('t [s]', 'interpreter', 'latex');
ylabel('$\dot{\varphi}$ [rad/s]', 'interpreter', 'latex');
ymin = min(dvarphi, [], 'all');
ymax = max(dvarphi, [], 'all');
ylim([ymin-0.2, ymax+0.2]);
set(gca,'LabelFontSizeMultiplier', label_mult);
set(gca,'FontSize',font_size);
grid on;

subplot(3, 1, 3);
plot(t, delta, 'LineWidth', 2);
xlabel('t [s]', 'interpreter', 'latex');
ylabel('$\delta$ [rad]', 'interpreter', 'latex');
ymin = min(delta, [], 'all');
ymax = max(delta, [], 'all');
ylim([ymin-0.2, ymax+0.2]);
set(gca,'LabelFontSizeMultiplier', label_mult);
set(gca,'FontSize',font_size);
grid on;
