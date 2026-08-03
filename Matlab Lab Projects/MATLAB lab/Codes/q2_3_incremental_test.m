tic
clc
clear

left_limit=-3; %defining the left interval
right_limit=3; %defining the right interval

x1=left_limit:0.1:right_limit;
y1=my_function1(x1);
plot(x1,y1,"k")
grid on

%this is the main program for the incremental test
roots_function=[];
x=linspace(left_limit,right_limit,10);
for k=1:length(x)-1
    if (my_function1(x(k))*my_function1(x(k+1))<0)
        x_mid=(x(k)+x(k+1))/2;
        [zero_new no_iterations1]=mynewtontol(inline("my_function1(x)"),inline("my_function1prim(x)"),x_mid,1e-12)
        new_root=zero_new;
        roots_function=[roots_function new_root];
    end
end
roots_function
toc %the reason why tic toc was added to this code will be discussed in the report