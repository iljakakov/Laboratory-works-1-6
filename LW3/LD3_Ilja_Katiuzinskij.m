%% Ilja Katiuzinskij 2026-09-28 var.6
%% 1
%% a
x = -pi:0.1:pi;
y = sin(x);
figure
plot(x,y)
axis([-pi pi min(y) max(y)])
xticks(-pi:pi/4:pi)
xticklabels({'-\pi','-3\pi/4','-\pi/2','-\pi/4','0','\pi/4','\pi/2','3\pi/4','\pi'})
title('f(x) = sin(x)')
xlabel('x')
ylabel('f(x)')
grid on
%% b
figure
y1 = 2*sin(x).*cos(x);
y2 = 3*sin(x).*cos(x);
plot(x,y1,'LineWidth',5)
hold on
plot(x,y2,'LineWidth',5)
hold off
axis([-pi pi min([y1 y2]) max([y1 y2])])
title('Funkciju grafikai')
xlabel('x')
ylabel('f(x)')
legend('2sin(x)cos(x)','3sin(x)cos(x)','Location','northeastoutside')
grid on
%% 2
t = 0:pi/20:4*pi;
x = sin(t);
y = cos(t);
z = tan(t);
figure
plot3(x,y,z,'o')
zlim([-20 20])
xlabel('x(t)')
ylabel('y(t)')
zlabel('z(t)')
title('3D grafikas')
grid on
%% Papildoma uzduotis
% Duomenys is 2 laboratorinio darbo 3 uzduoties
A = 4.5;
f = 6;
sigma = 1;
U1 = 3;
U2 = 1.5;
t = 0:0.001:1.5;
s = A*cos(2*pi*f*t);
n = sigma*randn(size(t));
s = s + n;
s_filt = s;
s_filt(abs(s_filt) < U2) = 0;
figure
% a
subplot(2,1,1)
plot(t,s,'r-.','LineWidth',2)
hold on
plot(t,s_filt,'k-','LineWidth',0.5)
yline(U1,'y-','LineWidth',2)
yline(-U1,'y-','LineWidth',2)
yline(U2,'y-','LineWidth',2)
yline(-U2,'y-','LineWidth',2)
title('Pradinis ir filtruotas signalai','Color',[0.5 0 1],'FontSize',14)
xlabel('Laikas, s')
ylabel('Itampa, V')
axis([min(t) max(t) min(s)-1 max(s)+1])
legend('Pradinis signalas','Filtruotas signalas','U1','-U1','U2','-U2','Location','northeastoutside')
grid on
% b
subplot(2,1,2)
ind = find(s > U1);
stem(t(ind),s(ind))
hold on
did_ind = find(s == max(s));
maz_ind = find(s == min(s));
plot(t(did_ind),s(did_ind),'gs','MarkerSize',12,'LineWidth',2)
plot(t(maz_ind),s(maz_ind),'ks','MarkerSize',12,'LineWidth',2,'MarkerFaceColor','w')
title('Signalo reiksmes virsijancios U1','Color',[0.5 0 1],'FontSize',14)
xlabel('Laikas, s')
ylabel('Itampa, V')
axis([min(t) max(t) min(s)-1 max(s)+1])
legend('s > U1','Maksimali reiksme','Minimali reiksme','Location','northeastoutside')
grid on