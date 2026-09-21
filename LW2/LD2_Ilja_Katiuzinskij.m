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
el_suma= sum(c, 2);