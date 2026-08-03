function [str no_iteration] = myfalse(f,xl,xu,tol,n)
% function str = myfalse(f,xl,xu,tol)
% Does n iterations of the bisection method for a function f
% Inputs: f - an inline function
% xl,xu - left and right edges of the interval
% n -- the maximal number of iterations to do.
% Outputs: str - the estimated solution of f(x) = 0,no_iterations –number of iterations
% tol -- tolerance
format long
for i=2:n
  if (f(xu)>f(xl))
    xr=xu-((f(xu)*(xu-xl))/(f(xu)-f(xl)));
  else
    xr=xl-((f(xl)*(xl-xu))/(f(xl)-f(xu)));
  end
  if (f(xu)*f(xr)<0)
    xl=xr;
  else
    xu=xr;
  end
  if (f(xl)*f(xr)<0)
    xu=xr;
  else
    xl=xr;
  end
  xnew(1)=0;
  xnew(i)=xr;
  if abs((xnew(i)-xnew(i-1))/xnew(i))<tol,break,end
end
str = xr;
no_iteration=i;
end
