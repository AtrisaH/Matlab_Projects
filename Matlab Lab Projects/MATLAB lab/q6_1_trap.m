clc
clear
x=[0 4];

%now using our modified version of trap we can calculate the are between
%the two functions. knowing the integration rules (will be discussed in the
%lab report), we define a function that is f=function1-function2. 
y=subfunction1(x);
%this function has already been defined so we write:
Area_between=trap2(@subfunction1,0.5,3.8,1e-12)