function plot_comparison3(t1, data1, t2, data2, t3, data3, ylabeltext, legendlabels)

LABEL_FONT_SIZE = 16;

hold on
grid on
box on
h1 = plot(t1, data1, 'lineWidth', 2);
h2 = plot(t2, data2, 'lineWidth', 2);
h3 = plot(t3, data3, 'lineWidth', 2);
hold off

max1 = max(data1);
max2 = max(data2);
max3 = max(data3);

min1 = min(data1);
min2 = min(data2);
min3 = min(data2);
min4 = -0.1*max([max1 max2 max3]);
min5 = -1;

ylim([1.2*min([min1 min2 min3 min4 min5]), 1.2*max([max1 max2])]);

%% Plot settings
set(gcf,'Color','white')
set(gcf,'Units','Pixels');
set(gcf, 'Position', [100, 100, 500, 400]);
set(gca,'fontsize',12)

%% axes config
ax = gca;
xlabel('$t$, s','Interpreter','latex')
set(get(ax,'XLabel'),'fontsize',LABEL_FONT_SIZE)
ylabel(ylabeltext,'Interpreter','latex')
set(get(ax,'YLabel'),'fontsize',LABEL_FONT_SIZE)
legend([h1 h2 h3],legendlabels,'FontSize',LABEL_FONT_SIZE,'Interpreter','latex','Location','northeast');