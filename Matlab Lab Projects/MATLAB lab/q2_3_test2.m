clc
clear
x = -1:0.1:3;
y=my_function3(x);
plot(x,y,"m", "LineWidth",3)
grid on
title('plot of function x^2-2x+1')
xlabel('x')
ylabel('y')
%this is to plot the function and find the real root, which by looking at
%the plot happens at x=1, hence this function has one root.
%now to test our code we write:
left_limit=-3;
right_limit=3;

roots_function=[];
x=linspace(left_limit,right_limit,10);
for k=1:length(x)-1
    if (my_function3(x(k))*my_function3(x(k+1))<0)
        x_mid=(x(k)+x(k+1))/2;
        [zero_new no_iterations1]=mynewtontol(inline("my_function3(x)"),inline("my_function3prim(x)"),x_mid,1e-6)
        new_root=zero_new;
        roots_function=[roots_function new_root];
    end
end
roots_function