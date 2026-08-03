tic
clear 
clc
x=-2:0.1:2;
y=my_function1(x);
plot(x,y,"b")
grid on
title("plot of function x^4-2x-2")
%to plot the function x^4-2x-2


[zero1 no_iterations1]=mynewtontol(inline("my_function1(x)"),inline("my_function1prim(x)"),-1,1e-6)
[zero2 no_iterations2]=mynewtontol(inline("my_function1(x)"),inline("my_function1prim(x)"),1,1e-6)
%these lines is the first part of the question that finds the roots
%manually 

x0=linspace(-5,5,1000); %the line of array for the x-axis
for k=1:length(x0)
    [zerosfunction(k) no_iterations(k)]=mynewtontol(inline("my_function1(x)"),inline("my_function1prim(x)"),x0(k),1e-6);
end 
%using this for loop, all the roots are automatically founded
zerosfunction;
zeros_rounded=round(zerosfunction,6);
zeros_final=unique(zeros_rounded) %using the unique and round operations 
toc