function I = trap2_new(func,a,b,n)
% trap: composite trapezoidal rule quadrature
%   I = trap(func,a,b,n,pl,p2,...):
%       composite trapezoidal rule
% input:
%   func = name of function to be integrated
%   a, b = integration limits
%   n = number of segments (default = 100)
%   %   I = integral estimate
if nargin<3,error('at least 3 input arguments required'),end
if ~(b>a),error('upper bound must be greater than lower'),end
if nargin<4|isempty(n),n=100;end
x = a; h = (b - a)/n;
s=func(a);
for i = 1 : n-1
  x = x + h;
  s = s + 2*func(x);
end
s = s + func(b);
I = (b - a) * s/(2*n);
end
