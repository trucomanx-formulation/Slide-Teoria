%
x=[0:200]*2*pi/100;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(1);
plot(sin(x),'LineWidth',8),grid;
xlim([0,200])

FONTSIZE=20;
print('sinal.png','-dpng');


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(2);
plot((sin(x)+abs(sin(x)))*0.5,'LineWidth',8),grid;
xlim([0,200])
FONTSIZE=20;
print('meiaonda.png','-dpng');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(3);
plot(abs(sin(x)),'LineWidth',8),grid;
xlim([0,200])
FONTSIZE=20;
print('ondacompleta.png','-dpng');


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(4);
plot(-sin(x),'LineWidth',8),grid;
xlim([0,200])

FONTSIZE=20;
print('sinalm.png','-dpng');

