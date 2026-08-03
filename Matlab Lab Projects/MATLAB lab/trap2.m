function I = trap2(func,a,b,tol)
% trap: composite trapezoidal rule quadrature
%   I = trap(func,a,b,n,pl,p2,...):
%       composite trapezoidal rule
% input:
%   func = name of function to be integrated
%   a, b = integration limits
%   tol = tolerance given
%   %   I = integral estimate
if nargin<3,error('at least 3 input arguments required'),end
if ~(b>a),error('upper bound must be greater than lower'),end
if nargin<4|isempty(tol),tol=1e-6;end %default tolerance is 10^-6
n = 1; %starting with one segment
h = (b - a)/n;
I_prev=h*(func(a)+func(b))/2;
while true
    n = n*2;
    h = (b - a)/n;
    x_mid= a + h : 2 * h : b - h;
    I_curr = I_prev / 2 + h * sum(func(x_mid));

        % Check for convergence
        if abs(I_curr - I_prev) < tol
            break;
        end
        % Update for the next iteration
        I_prev = I_curr;
    end

    I = I_curr; % Final integral estimate
end