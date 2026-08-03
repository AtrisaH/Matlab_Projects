clc
clear
x = -3:0.1:3;
y = my_function1(x);
plot(x,y, "m")
grid on
[zero1 no_of_iteration1]=myfalse(inline('my_function1(x)'),-1,1,1e-6,100)
[zero2 no_of_iteration2]=myfalse(inline('my_function1(x)'),0,2,1e-6,100)
%this code will provide all roots of function 1 with a lot of accuracy

tolerance=10.^[-16:-1]; % meaning = 10 ^ [-16 -15 -14 ..... -1]

for k=1:length(tolerance)
    [zero1(k) no_of_iteration1(k)]=myfalse(inline('my_function1(x)'),-1,1,tolerance(k),100)
end

figure(1)
semilogx(tolerance, no_of_iteration1, "c")
grid on
title('number of iterations vs tolerance with modified false function')
xlabel('tolerance')
ylabel('number of iterations')

