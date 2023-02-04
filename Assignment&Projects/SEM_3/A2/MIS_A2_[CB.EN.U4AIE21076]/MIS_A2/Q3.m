clc;
clear;
close all;
i = input('Please give number for the total number of terms in the taylor series: ');
x = input('Please give the input: ');
expfunc = 0;
for n = 0:i
    expfunc = expfunc + (x^(n))/factorial(n);
    
end

disp((expfunc))
