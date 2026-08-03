function [x no_iterations]= mynewtontol(f,f1,x0,tol)
x = x0; % set x equal to the initial guess x0. 
i=0;    % set counter to zero
y = f(x);
	while (abs(y) > tol && i < 1000)
	% Do until the tolerance is reached or max iter. 
	x = x - y/f1(x); % Newton’s formula
	y = f(x);
	i = i+1;
	end
no_iterations=i-1;
end
