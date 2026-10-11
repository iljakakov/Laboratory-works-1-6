%% Ilja Katiuzinskij 2026-10-11 var.6
%% 1
%% a
x = linspace(-2,2,20);
z = linspace(-1,1,20);
[X,Y,Z] = meshgrid(x,x,z);
V = sin((X.^2+Y.^2)/20).*exp(-(X.^2+Y.^2));
figure
slice(X,Y,Z,V,[-1 0 1],0,[-0.5 0.5])
shading interp
colormap(hot)
colorbar
view(45,30)
axis([-2 2 -2 2 -1 1])
xlabel('x')
ylabel('y')
zlabel('z')
title('f(x,y) = sin((x^2+y^2)/20)*e^{-(x^2+y^2)}')
grid on
%% b
x = linspace(-1,1,40);
[X,Y] = meshgrid(x,x);
R = sqrt(X.^2 + Y.^2);
Z = exp(R.^2);
figure
surf(X,Y,Z)
shading interp
colormap([0 0 1])
alpha(0.5)
view(70,30)
xlabel('x')
ylabel('y')
zlabel('z')
title('z(r) = e^{r^2}')
grid on
%% Papildoma uzduotis
x = linspace(-1,1,40);
[X,Y] = meshgrid(x,x);
Z = 1 - (X.^2 + Y.^2);
n = 64;
c = linspace(0,1,n)';
cmap1 = [c zeros(n,1) 1-c];   
cmap2 = [zeros(n,1) c 1-c];  
cmap3 = [c c zeros(n,1)];     
cmaps = {cmap1, cmap2, cmap3};
vardai = {'Melyna-raudona','Melyna-zalia','Juoda-geltona'};
figure
for k = 1:3
    subplot(1,3,k)
    surf(X,Y,Z)
    shading interp
    colormap(gca,cmaps{k})
    colorbar
    xlabel('x')
    ylabel('y')
    zlabel('z')
    title(vardai{k})
    grid on
end