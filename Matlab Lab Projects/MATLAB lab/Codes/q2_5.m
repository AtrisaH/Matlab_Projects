clc
clear
x=-3:0.1:3;
y=my_function1(x);%recalling the function x^4-2x-2
y_prim=my_function1prim(x);
y_div_yprim= y./y_prim;
figure(1)
plot(x,y,x,y_prim)
grid on

x0=1; %this line fixes the initial guess
tolerance=10.^[-16:0];
%main program for newton method
for k=1:length(tolerance)
    [zerosfunction(k) no_iterations(k)]=mynewtontol(inline("my_function1(x)"),inline("my_function1prim(x)"),x0,tolerance(k));
end 

tolerance=10.^[-16:0];
%main program for bisectoin method
for k=1:length(tolerance)
    [zero1(k) no_of_iteration1(k)]=mybisect_tol(inline('my_function1(x)'),1,3,tolerance(k),100);
end

figure(2)
semilogx(tolerance, no_iterations)
grid on
title('number of iterations vs tolerance via Newton method')
xlabel('tolerance')
ylabel('number of iterations')

figure(3)
semilogx(tolerance, no_of_iteration1)
grid on
title('number of iterations vs tolerance via bisection method')
xlabel('tolerance')
ylabel('number of iterations')
