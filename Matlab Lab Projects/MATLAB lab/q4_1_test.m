clc 
clear

x1=1920:10:2000; %defining x data
y1=[105 120 130 150 180 205 225 250 280]; %defining y data

xx=1925;
yy=lagrange(x1,y1,xx) %number of population in year 1925 estimated by lagrange

xx1=1945;
yy1=lagrange(x1,y1,xx1)%number of population in year 1945 estimated by lagrange
p=polyfit(x1,y1,1);
regression=polyval(p,x1);
x0=1945;
regression_1945=polyval(p,x0) %the result is 149 million where
% lagrange gave us 137 million
diff_1945=abs(regression_1945-yy1)

xx0=1920:5:2000;
yy0=my_lagrange(xx0);
yy0_lin=p(1)*xx0+p(2);

y_2015=my_lagrange(2015)%number of population in year 2015 estimated by
% using the program my_lagrange


figure(1)
hold on
stem(x1,y1) %as instructed, using stem to plot this function
title('Population of a region')
xlabel('year')
ylabel('population in million')
plot(x1,y1,'o',xx0,yy0,"c",xx0,yy0_lin,'m')
title('best fitting line for given data')
xlabel('year')
ylabel('population in million')
grid on
legend('Data given','Data','Lagrange interpolation', 'Linear best fit')