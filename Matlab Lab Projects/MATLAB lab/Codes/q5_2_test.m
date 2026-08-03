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
%this is for function 1 sinx/x
tol=10.^[-16:-1];
for k=1:length(tol)
    [q(k), ea(k), iter1(k)]=romberg(inline('my_int1(x)'),1,2,tol(k),40);
end

%this is for function 2 e^x
tol=10.^[-16:-1];
for k=1:length(tol)
    [q(k), ea(k), iter2(k)]=romberg(inline('my_int2(x)'),0,1,tol(k),40);
end

figure(2)
semilogx(tol,iter1,tol,iter1,'o') %plotting for functoin 1
grid on
title('number of iterations vs tolerance for sinx/x')
xlabel('tolerance')
ylabel('number of iterations')
figure(3)
semilogx(tol,iter2,tol,iter2,'o') %plotting for function 2
grid on
title('number of iterations vs tolerance for e^x')
xlabel('tolerance')
ylabel('number of iterations')