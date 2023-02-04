clc;
clear;
close all;
i = input('Please give number for the total number of terms in the taylor series: ');
x = input('Please give the input: ');
cosfunc = 0;
for n = 0:i
    cosfunc = cosfunc + ((-1)^n)*(x^(2*n))/factorial(2*n);
    
end

disp((cosfunc))
