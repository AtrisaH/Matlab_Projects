clc
clear

x=-2:0.1:2;
y1=my_int1(x);
y2=my_int2(x);
figure(1)
plot(x,y1,'c',x,y2, 'm')
title('plot of the functions')
xlabel('x')
ylabel('y')
grid on
%the reason trp2 is named trap2_new is due to a change that was made to the
%og trap2 code for Q6 so this trap2_new is the original code from the
%lectures
integ1=trap2_new(inline('my_int1(x)'),1,2,10000)
integ2=trap2_new(inline('my_int2(x)'),0,1,10000)

%this is for function1= sinx/x
for k=1:50;
    integ1(k)=trap2_new(inline('my_int1(x)'),1,2,k);
    error1(k)=abs(integ1(k)-0.6593299064);
end
%this is for function2=e^x

for k=1:50;
    integ2(k)=trap2_new(inline('my_int2(x)'),0,1,k);
    error2(k)=abs(exp(1)-1-integ2(k));
end

intervals=1:50;
figure(2)
semilogy(intervals,error1)
title('error vs intervals for function sinx/x')
xlabel('intervals')
ylabel('errors')
grid on
figure(3)
semilogy(intervals, error2)
title('error vs intervals for function e^x')
xlabel('intervals')
ylabel('errors')
grid on