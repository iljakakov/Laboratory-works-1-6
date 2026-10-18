function varargout = vienasdu(varargin)
% VIENASDU Apskaiciuoja sin(x) ir cos(x).
% a = vienasdu(x) - grazina sin(x).
% [a,b] = vienasdu(x) - grazina sin(x) ir cos(x).
if nargin ~= 1
    error('Reikia ivesti viena argumenta')
end
if nargout == 1
    varargout{1} = sin(varargin{1});
elseif nargout == 2
    varargout{1} = sin(varargin{1});
    varargout{2} = cos(varargin{1});
else
    error('Galima grazinti tik viena arba du rezultatus')
end
end