function [y]=my_lagrangeinv(x)
x1=1920:10:2000;
y1=[105 120 130 150 180 205 225 250 280];
y=lagrange(x1,y1,x)-200;
end