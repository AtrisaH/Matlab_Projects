function [zeroroot niterations]=mybisect_tol(f,a,b,tol,nmax)
% this functin is modifying mybisect where it does n interations of the
% bisection method for given function.
% inputs are f (inline function), tol ( given tolerance, a,b (left
% and right edges of the interval) and nmax (maximal number of iterations)
% outputs include zeroroot (estimated value of the root) and niterations
% (number of iterations)
format long
c=f(a);
d=f(b);
if (c*d>0.0)

    error('Function has the same sign at both endpoints')
end
%disp('x y')
for i=2:nmax %1 is not valid since it will make an error
    x(i)=(a+b)/2;
    y=f(x(i));
    %disp ([x y])
    if (y==0.0) %solved the equations excatly
        niterations=1;
        break %jumps out of the loop
    end
    if (c*y)<0
        b=x(i);
    else
        a=x(i);
    end
    x(1)=0;
    x(i)=(a+b)/2;
    if (abs((x(i)-x(i-1))/x(i))<tol),break,end
end
niterations=i;
zeroroot=x(i);
%e=(b-a)/2;
end