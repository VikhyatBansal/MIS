clear all;clc;
A = readmatrix('C:\Users\HP\Desktop\IRIS_excerpt.csv');
A1 = A;
%let us calculate the mean of 1st column
sum1 = 0;
for i = 1:1:50
    sum1 = sum1 + A(i,1);
end
mean1 = sum1/50;
disp("mean of 1st column is "+mean1);
%mean for 2nd column
sum2 = 0;
for i = 1:1:50
    sum2 = sum2 + A(i,2);
end
mean2 = sum2/50;
disp("mean of 2nd column is "+mean2);
%mean of 3rd column
sum3 = 0;
for i = 1:1:50
    sum3 = sum3 + A(i,3);
end
mean3 = sum3/50;
disp("mean of 3rd column is "+mean3);
%mean of 4th column
sum4 = 0;
for i = 1:1:50
    sum4 = sum4 + A(i,4);
end
mean4 = sum4/50;
disp("mean of 4th column is "+mean4);

mean_ = mean(A, 1)
disp(mean_)
%now lets get the standardized matrix,A1
A1(:, 1) = A1(:, 1) - mean_(1);
A1(:, 2) = A1(:, 2) - mean_(2);
A1(:, 3) = A1(:, 3) - mean_(3);
A1(:, 4) = A1(:, 4) - mean_(4);
%to calculate covariance matrix,CoVar
%CoVar = (A1)'*(A1)/49;   %49=50-1
%now we can do singular value decomposition of CoVar
[U,Sigma,V] = svd(A1);
%to get projection matrix,take first 2 columns from U
%U1 = U(:,1:2);       %We have taken first two column important dataset
%now I can just mulitply this with the original dataset
%A_new =  ;%this is the dataset with its parameters reduced

%x = A_new(:,1)
%y = A_new(:,2)
%scatter(x,y)


