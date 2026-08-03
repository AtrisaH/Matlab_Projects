clc
clear
x=-3:0.1:3;
y=my_function1(x); %calling our function x^4-2x-2
y_prim=my_function1prim(x);
y_div_yprim= y./y_prim; %this is the newton function f(x)/f'(x)
figure(1)
plot(x,y,x,y_prim)
title('plot of the functoin and its derivitive')
legend('function', 'driv of function')
xlabel('x')
ylabel('y')
grid on
%the nect 4 line of codes are our main program 
x0=linspace(-5,5,1000); %the line of array for the x-axis
for k=1:length(x0)
    [zerosfunction(k) no_iterations(k)]=mynewtontol(inline("my_function1(x)"),inline("my_function1prim(x)"),x0(k),1e-6);
end 

figure(2)
plot(x0,no_iterations)
grid on
title('number of iterations vs x0 for function x^4-2x-2')
xlabel('x0')
ylabel('number of iterations')

figure(3)
plot(x,y_div_yprim)
title('newton theory for function 1')
xlabel('x')
ylabel("f(x)/f'(x)")
grid on