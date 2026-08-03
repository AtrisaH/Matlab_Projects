clc
clear

x=[-10 -8 -6 -4 -2 0 2 4 6 8 10];%defining arrays of x
y=[-980 -620 -70 80 100 90 0 -80 -90 10 220];%defining arrays of y

figure(1) 
plot(x,y)
grid on

%by using polyfit and n=3,4,5 we will create three different plots, eahc
%more accurate than the last one.
p=polyfit(x,y,3);
xx=min(x):0.01:max(x);
yy=p(1)*xx.^3+p(2)*xx.^2+p(3).*xx+p(4);

p4=polyfit(x,y,4);
xx4=min(x):0.01:max(x);
yy4=p4(1)*xx4.^4+p4(2)*xx4.^3+p4(3).*xx4.^2+p4(4)*xx4+p4(5);

p5=polyfit(x,y,5);
xx5=min(x):0.01:max(x);
yy5=p5(1)*xx5.^5+p5(2)*xx5.^4+p5(3).*xx5.^3+p5(4)*xx5.^2+p5(5)*xx5+p5(6);

plot(x,y,"o", xx, yy, "-r", xx4, yy4, "--c", xx5, yy5, "-m")
title('question 3 using polyfit')
xlabel('x')
ylabel('y')
legend('data given','n=3','n=4','n=5')
grid on