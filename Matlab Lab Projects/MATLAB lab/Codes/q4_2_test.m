clc 
clear
x1=1920:10:2000; %defining x data
y1=[105 120 130 150 180 205 225 250 280]; %defining y data

 
xx=1925;
yy=lagrange(x1,y1,xx)

xx1=1945;
yy1=lagrange(x1,y1,xx1)

xx0=1920:5:2000;
yy0=my_lagrange(xx0);



yy2=my_lagrangeinv(xx0);
figure(2)
plot(x1,y1,'o',xx0,yy0,"c", xx0, yy2, "-m")
grid on
title('plot for q4.2')
legend('data given','lagrange','inverse interpolation')
xlabel('year')
ylabel('population in million')

%4.2)a
root_200=fzero('my_lagrangeinv',1970) %the root of the inverse function which is year 1967
% , month 7

%4.2)b
Quad_reg= polyfit(x1, y1, 2); % Quadratic regression
g = @(x) lagrange(x1, y1, x) - polyval(Quad_reg, x);
intersection_year = fzero(g, [1920, 2000])


