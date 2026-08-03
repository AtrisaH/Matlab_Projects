function S = my_sin(x,n)
% x and n both are inputs and numbers
% k  is  index of summation in the series. It starts at n=0 and 
% increases by 1 in each term. 
% a clear version of sin(x) in terms of k and x is available in the report.
S=0;  %this is the initial S value
validateattributes(n, {'numeric'}, {'positive', 'integer'}); 
% this line is to validate the input. 
for k=0:n
    S=S+((-1).^k)*((x).^(2*k+1))./my_factorial(2*k+1);
    % the first S is added due to the for loop summing all the previous S
    % value and then added the new value. For example, S(10)=S(1:9)+S(10).
end
end

