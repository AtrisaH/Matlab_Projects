clc
clear
x=-1:0.1:3;
y=my_function3(x);
y_prim=my_function3prim(x);
y_div_yprim= y./y_prim;
figure(1)
plot(x,y,x,y_prim)
grid on

x0=linspace(-5,5,1000); %the line of array for the x-axis
for k=1:length(x0)
    [zerosfunction(k) no_iterations(k)]=mynewtontol(inline("my_function3(x)"),inline("my_function3prim(x)"),x0(k),1e-6);
end 

figure(2)
plot(x0,no_iterations)
grid on
title('number of iterations vs x0 for function x^2-2x+1')
xlabel('x0')
ylabel('number of iterations')

figure(3)
plot(x,y_div_yprim)
grid on
title('newton theory for function 1')
xlabel('x')
ylabel("f(x)/f'(x)")
grid on