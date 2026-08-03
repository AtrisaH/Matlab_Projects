clear
clc
x = -2:0.1:2;
y = my_function1(x);
plot(x,y, "m", LineWidth=3)
ylim([-5 20]); %this line was added so that the roots would be
% clearly seen in the graph
xlabel("x","FontSize",14)
ylabel("y","FontSize",14)
title("function1 plot","FontSize",14)
grid on
%using the plot, we will identify the proper intervals width for root 1 is
%x between -1 and 1 and for root 2 is x between 0 and 2. (this will be
%discussed more in the report)
[zero1_bisect,error1_bisect]=mybisect(inline('my_function1(x)'),-1,0,5)
[zero2_bisect,error2_bisect]=mybisect(inline('my_function1(x)'),1,2,5)
%using the main bisection code provided from the lecture notes, we shall
%obtain the roots and the errors.The interval width and number of iteration
%can be changed manually 