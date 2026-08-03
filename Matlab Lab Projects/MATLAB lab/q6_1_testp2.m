clc
clear

x=[0 4];
y=function_1(x);
y=function_2(x);
%by looking at graph we can estimate x1 to be around 0.5 and x2 to be 3.7.
%now by using mybisecttol function we try to find x1 and x2.(?)
%to do this we define a new function where f(x)=functio1-function2
f=@(x) function_1(x)-function_2(x);
%to show how this function works we shall plot the new function
figure(2)
fplot(f,[0 4])
title('plot of function f(x)')
xlabel('x')
ylabel('y')
grid on
%as seen in the graph, where our functions intersect, the new function has
%a root so we use the fzero to find the zeros
x1=fzero('subfunction1',0.5)
x2=fzero('subfunction1',3.5)