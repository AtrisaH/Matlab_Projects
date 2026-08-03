clc
clear
x = -3:0.1:3;
y = my_function1(x);


[zero1 no_of_iteration1]=mybisect_tol(inline('my_function1(x)'),-1,1,1e-6,100)
[zero2 no_of_iteration2]=mybisect_tol(inline('my_function1(x)'),0,2,1e-6,100)

tolerance=10.^[-16:-1];
for k=1:length(tolerance)
    [zero1(k) no_of_iteration1(k)]=mybisect_tol(inline('my_function1(x)'),-1,1,tolerance(k),100);
end
figure(1)
semilogx(tolerance, no_of_iteration1, "b")
grid on
title('number of iterations vs tolerance with modified bisection function')
xlabel('tolerance')
ylabel('number of iterations')

