%%Ilja Katiuzinskij 2026-09-28 var.6

%%1
%%a
x= -pi:0.1:pi;
y= sin(x);
figure
plot(x,y)
xticks(-pi:pi/4:pi)
xticklabels({'-\pi','-3\pi/4','-\pi/2','-\pi/4','0',...
    '\pi/4','\pi/2','3\pi/4','\pi'})
title ('f(x) = sin(x)')
xlabel('x')
ylabel('f(x)')
grid on 