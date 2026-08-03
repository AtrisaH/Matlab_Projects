clear 
clc
fun = @my_function2; %the function
x01=[1 2]; %the interval (note that the end points must have the same sign)
roots1=fzero(fun,x01) %the command to find the roots around interval 1
x02=[-1 -2];
roots2=fzero(fun, x02)
x03=0; 
roots3=fzero(fun, x03)
x04=0.2;
roots4=fzero(fun,x04)