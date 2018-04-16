set(groot, 'defaultAxesTickLabelInterpreter','latex'); 
set(groot, 'defaultLegendInterpreter','latex');
set(0,'defaultTextInterpreter','latex');
grid on
hold on
%������ ��� �������� ������������
plot(h_r,delta_r,'r*')
plot(fittedmodel_d_r)
h=200:10:1800;
d_r=4*0.00121*h;
plot(h,d_r)
legend('experiment','cftool','theory')
xlabel('h,mm');
ylabel('$\delta$, mm')
hold off
a_r=0.005524; %���� �������
epsilon=atan(a_r);
%%%�� �������� ������
n=1.52;
alpha=0.002327;
%%%
b=(n-1)*4*alpha; %???????????????????????????
b=num2str(b);
b1='$(n-1)\cdot\alpha=$';
b0=strcat(b1,'',b);
text(500,7.5,b0);
b3=strcat('$\varepsilon=$','',num2str(epsilon));
text(500,7.5,b0);
text(500,7.1,b3);



%������ ��� ������� ������������
figure
hold on
grid on
plot(h_g,delta_g,'r*')
plot(fittedmodel_d_g)
h=200:10:1800;
d_g=4*0.00121*h;
plot(h,d_g)
legend('experiment','cftool','theory')
xlabel('h,mm');
ylabel('$\delta$,mm')
hold off
a_r=0.005542; %���� �������
epsilon=atan(a_r);
%%%�� �������� ������
n=1.52;
alpha=0.002327;
%%%
b=(n-1)*4*alpha;
b=num2str(b);
b1='$(n-1)\cdot\alpha=$';
b0=strcat(b1,'',b);
b3=strcat('$\varepsilon=$','',num2str(epsilon));
text(500,7.5,b0);
text(500,7.1,b3);


% %������������ ������ �� d. ������� ������
% figure
% hold on
% grid on
% plot(h_g,delta_d_g,'r*')
% plot(fittedmodel_dd_g)
% legend('�����������','cftool')
% xlabel('h,��');
% ylabel('d\cdot\delta ,��^2')
% hold off
% %������������ ������ �� d. ������ ������
% figure
% hold on
% grid on
% plot(h_r,delta_d_r,'r*')
% plot(fittedmodel_dd_r)
% legend('�����������','cftool')
% xlabel('h,��');
% ylabel('d\cdot\delta ,��^2')

