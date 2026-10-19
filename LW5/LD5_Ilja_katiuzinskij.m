%% Ilja Katiuzinskij 2026-10-16 var.6

%% 1
% a
kursai.EUR.pirkimas = 1.00;
kursai.EUR.pardavimas = 1.00;
kursai.USD.pirkimas = 0.85;
kursai.USD.pardavimas = 0.87;
kursai.PLN.pirkimas = 0.23;
kursai.PLN.pardavimas = 0.24;
disp('Valiutu pirkimo ir pardavimo kursai:')
disp(kursai)
disp('EUR:')
disp(kursai.EUR)
disp('USD:')
disp(kursai.USD)
disp('PLN:')
disp(kursai.PLN)

%% b 
kursai.PLN.pirkimas = 0.25;
disp('Atnaujinti valiutu kursai:')
disp(kursai.PLN)

%% 2
A = round(10 * rand + 1);
spejimas = input('Spekite skaiciu: ');
while spejimas ~= A
    if spejimas < A
        disp('Skaicius per mazas')
    else
        disp('Skaicius per didelis')
    end
    spejimas = input('Spekite dar karta: ');
end
disp('Teisingai! Atspejote skaiciu!')

%% Papildoma uzduotis
tekstas = input('Iveskite sakini: ', 's');
naujas = '';
zodziu_skaicius = 0;
tarpas = true;
for i = 1:length(tekstas)
    if tekstas(i) ~= ' '
        if tarpas
            if zodziu_skaicius > 0
                naujas = [naujas ' '];
            end
            zodziu_skaicius = zodziu_skaicius + 1;
        end
        naujas = [naujas tekstas(i)];
        tarpas = false;
    else
        tarpas = true;
    end
end
disp('Sakinys be papildomu tarpu:')
disp(naujas)
disp('Zodziu skaicius:')
disp(zodziu_skaicius)
