clc
clear
%these are the codes for the two functions in Q6
x = 0:0.1:4;
hold on
y1=function_1(x); %the functions have already been defined
plot(x,y1,"c")
y2=function_2(x);
plot(x,y2,"m")
legend('function1','function2')
title('intersection of the two functions')
xlabel('x')
ylabel('y')
grid on
hold off

%by looking at graph we can estimate x1 to be around 0.5 and x2 to be 3.7.
%now by using mybisecttol function we try to find x1 and x2.
%to do this we define a new function where f(x)=functio1-function2
%to show how this function works we shall plot the new function

