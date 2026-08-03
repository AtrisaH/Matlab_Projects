clc
clear

x=[-10 -8 -6 -4 -2 0 2 4 6 8 10]; %defining arrays of x
y=[-980 -620 -70 80 100 90 0 -80 -90 10 220]; %defining arrays of y


[a r2]=mylinregr(x,y) %where a is our slope and intersect and r is regression

xp = linspace(min(x),max(x),100);
yp = a(1)*xp+a(2); %a(1) here is a0 and a(2) is a1 from the assignment
plot(x,y,'o',xp,yp)
title('Question 3 data points')
xlabel('x')
ylabel('y')