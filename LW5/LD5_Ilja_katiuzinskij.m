%% Ilja Katiuzinskij 2026-10-16 var.6
%% 1. 
% a) 
kursai.USD.pirkimas  = 1.05;
kursai.USD.pardavimas = 1.09;
kursai.GBP.pirkimas  = 0.85;
kursai.GBP.pardavimas = 0.89;
kursai.PLN.pirkimas  = 4.25;
kursai.PLN.pardavimas = 4.35;
disp('Pradine struktura:')
disp(kursai.USD)
disp(kursai.GBP)
disp(kursai.PLN)

% b) 
kursai.GBP.pirkimas = 0.87;
disp('Po pakeitimo (GBP pirkimas):')
disp(kursai.GBP)
disp(kursai.USD)   
disp(kursai.PLN)   
%% 2
A = round(10 * rand + 1);
spejimas = input('Atspekite skaiciu (1-11): ');
while spejimas ~= A
    if spejimas < A
        disp('skaicius per mazas')
    else
        disp('skaicius per didelis')
    end
    spejimas = input('Bandykite dar karta: ');
end
disp('Atspejote!')