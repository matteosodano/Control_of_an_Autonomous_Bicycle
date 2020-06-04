function fig = plotFig(t,phi,dphi,delta)
    font_size = 12;
    label_mult = 18/font_size;
    fig = figure('Position', get(0, 'Screensize'));
    fig.WindowState = 'maximized';
    box on

    hold on 
    subplot(3, 1, 1);
    
    plot(t, phi{1}, t, phi{2}, 'LineWidth', 2);
    xlabel('t [s]', 'interpreter', 'latex');
    ylabel('$\varphi$ [rad]', 'interpreter', 'latex');
    ymin = min([phi{1}; phi{2}], [], 'all');
    ymax = max([phi{1}; phi{2}], [], 'all');
    ylim([ymin-0.2, ymax+0.2]);
    set(gca,'LabelFontSizeMultiplier', label_mult);
    set(gca,'FontSize',font_size);
    
    grid on;
    
    subplot(3, 1, 2);
    plot(t, dphi{1}, t, dphi{2}, 'LineWidth', 2);
    xlabel('t [s]', 'interpreter', 'latex');
    ylabel('$\dot{\varphi}$ [rad/s]', 'interpreter', 'latex');
    ymin = min([dphi{1}; dphi{2}], [], 'all');
    ymax = max([dphi{1}; dphi{2}], [], 'all');
    ylim([ymin-0.2, ymax+0.2]);
    set(gca,'LabelFontSizeMultiplier', label_mult);
    set(gca,'FontSize',font_size);
    grid on;
    
    subplot(3, 1, 3);
    plot(t, delta{1}, t, delta{2}, 'LineWidth', 2);
    xlabel('t [s]', 'interpreter', 'latex');
    ylabel('$\delta$ [rad]', 'interpreter', 'latex');
    ymin = min([delta{1}; delta{2}], [], 'all');
    ymax = max([delta{1}; delta{2}], [], 'all');
    ylim([ymin-0.2, ymax+0.2]);
    set(gca,'LabelFontSizeMultiplier', label_mult);
    set(gca,'FontSize',font_size);
    grid on;
    
    
end

