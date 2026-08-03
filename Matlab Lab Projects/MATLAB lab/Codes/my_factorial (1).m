function [M]= my_factorial(n)
M=1;
 validateattributes(n, {'numeric'}, {'positive', 'integer'}); 
%this line is to make sure n is positive and an integer number
for i= 2:n
    M=M*i;
end
end
% we are writing a for loop which calculates the previous results and then
% multiplies M with the new n so if n=4, new M is old M that was calculated
% when n=3 multiplied by n=4 (M4=M3*4)