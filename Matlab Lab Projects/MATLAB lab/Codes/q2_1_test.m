clear
clc
x=-2:0.1:2;
y=my_function2(x);
plot(x,y,"m")
grid on
title("plot of function")
xlabel("x")
ylabel("y")
%looking at the plot given to us we can determine that this function
%have 4 real roots.
f=[1 0 -3 0.7 0]; %this line of code is a vector repesenting the polynomial
r=roots(f) %this line will calculate the roots