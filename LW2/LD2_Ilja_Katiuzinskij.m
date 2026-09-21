%%Ilja Katiuzinskij 2026-09-21 var.6

%%1
v1=10:-1:-15;
v2=log2(v1);
v3= v1 ./ v2;
v3= v3';

%%2
Cm1= pi/2 : pi/2 : 3*pi/2;
Cm2= -1:1;
Cm3= -3:-1:-5;
C= [Cm1; Cm2; Cm3];
el_suma= sum(C, 2);

%%3
A= 4.5;
f= 6;
sigma= 1;
U1= 3;
U2= 1.5;

t= 0:0.001:1.5;
s=A* cos(2*pi*f*t);
n=sigma*randn(size(t));
s= s+n;

s_U1= s(s>U1);

s_filt=s;
s_filt(abs(s_filt)< U2) = 0;

nefilt_dydis = size (s);

antrinktu_dydis = size (s_U1);

didziausias= max (s_filt);
maziausias= min (s_filt);

%%Papildoma uzduotis
A= input('Iveskite vektoriu A: ');
B= A(2:2:end);
C= A(end:-1:-2:-1);

disp('vektorius B yra: ')
disp(B)

disp ('vektorius C yra: ')
disp(C)


