%% Ilja Katiuzinskij 2026-10-15 var.6

%% 1
A = atsitiktiniai(3, 4, 10);
disp('Sugeneruotas masyvas:')
disp(A)
disp('Funkcijos aprasymas:')
help atsitiktiniai

%% 2
global x y
x = 2*pi:-0.1:-2*pi;
y = zeros(size(x));
funkcija1
funkcija2
figure
plot(x,y,'y--*')
title('y(x) = sin(x)/x')
xlabel('x')
ylabel('y(x)')
grid on
whos global

%% Papildoma uzduotis
a = vienasdu(pi/3);
disp('Vienas rezultatas:')
disp(a)
[s,c] = vienasdu(pi/3);
disp('Du rezultatai:')
disp(s)
disp(c)
disp('Funkcijos aprasymas:')
help vienasdu