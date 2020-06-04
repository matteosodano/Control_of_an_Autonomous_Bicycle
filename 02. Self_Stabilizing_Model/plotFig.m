function fig = plotFig(t,x,delta)
    font_size = 12;
    label_mult = 18/font_size;
    fig = figure('Position', get(0, 'Screensize'));
    fig.WindowState = 'maximized';
    box on

    hold on 
    subplot(3, 1, 1);
    
    plot(t, x(:, 1), 'LineWidth', 2);
    xlabel('t [s]', 'interpreter', 'latex');
    ylabel('$\varphi$ [rad]', 'interpreter', 'latex');
    ymin = min(x(:, 1), [], 'all');
    ymax = max(x(:, 1), [], 'all');
    ylim([ymin-0.2, ymax+0.2]);
    set(gca,'LabelFontSizeMultiplier', label_mult);
    set(gca,'FontSize',font_size);
    
    grid on;
    
    subplot(3, 1, 2);
    plot(t, x(:, 2), 'LineWidth', 2);
    xlabel('t [s]', 'interpreter', 'latex');
    ylabel('$\dot{\varphi}$ [rad/s]', 'interpreter', 'latex');
    ymin = min(x(:, 2), [], 'all');
    ymax = max(x(:, 2), [], 'all');
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
    
    
end