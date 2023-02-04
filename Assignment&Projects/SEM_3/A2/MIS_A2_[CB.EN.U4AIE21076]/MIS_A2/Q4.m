clc;
clear;
close all;
i = input('Please give number for the total number of terms in the taylor series: ');
x = input('Please give the input: ');
expfunc = 0;
n=0;
while n < i
    expfunc = expfunc + (x^(n))/factorial(n);
    n = n+1;
    
end

disp((expfunc))
