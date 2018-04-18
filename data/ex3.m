close all
hh=figure;
set(0,'defaultTextInterpreter','latex');
set(0,'DefaultAxesFontSize',12);
set(0,'DefaultTextFontSize',12);
grid on
hold on
epsilon=0.00121004*2;
L=1695;
lambda=6.34*10^-4;
h=0:0.01:1300;
N=2*epsilon^2*(L.*h-h.^2)/(L*lambda);
plot(h,N,'b');
plot(fittedmodel);
plot(he,Ne,'r*');
legend('theory','cftool','experiment')
xlabel('$h$,mm');
ylabel('$N$')
hold off
saveas(hh,'N_r.png')

hh1=figure;
grid on
hold on
epsilon=0.00121004*2;
L=1695;
lambda=5.31*10^-4;
h=0:0.01:1500;
N=2*epsilon^2*(L.*h-h.^2)/(L*lambda);
plot(h,N,'b');
plot(fittedmodel1);
plot(he,Ne_g,'r*');
legend('theory','cftool','experiment')
xlabel('$h$,mm');
ylabel('$N$')
hold off
saveas(hh1,'N_g.png')
