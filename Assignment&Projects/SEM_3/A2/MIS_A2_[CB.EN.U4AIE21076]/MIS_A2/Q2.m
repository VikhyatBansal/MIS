clc;
clear;
close all;
i = input('Please give number for the total number of terms in the taylor series: ');
x = input('Please give the input: ');
sinfunc = 0;
n=0;
while n < i
    sinfunc = sinfunc + ((-1)^n)*(x^(2*n+1))/factorial((2*n)+1);
    n = n+1;
    
end

disp((sinfunc))
