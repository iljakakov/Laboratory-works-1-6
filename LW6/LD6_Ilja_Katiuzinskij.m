%% Ilja Katiuzinskij 2026-10-15 var.6

%%1
A = atsitiktiniai(3,4,10)

%% 2
global x y
x = 2*pi:-0.1:-2*pi;
y = zeros(size(x));
nenulinis_dalis
nulinis_dalis
figure
plot(x,y,'--y*')
title('y(x) = sin(x)/x')
xlabel('x'); ylabel('y'); grid on
whos global


%% Papildoma
a = vienasdu(pi/3)
[s,c] = vienasdu(pi/3)
%% Funkcijos 
function A = atsitiktiniai(eil, stulp, N)
A = randi(N, eil, stulp);
end

function nenulinis_dalis
global x y
idx = (x ~= 0);
y(idx) = sin(x(idx)) ./ x(idx);
end

function nulinis_dalis
global x y
y(x == 0) = 1;
end

function varargout = vienasdu(varargin)
if nargin ~= 1
    error('Reikia vieno argumento.');
end
v = varargin{1};
if nargout <= 1
    varargout{1} = cos(v);
elseif nargout == 2
    varargout{1} = sin(v);
    varargout{2} = cos(v);
else
    error('Daugiausia galima grazinti du kintamuosius.');
end
end