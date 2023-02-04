clear all;clc;
A = readmatrix('C:\Users\HP\Desktop\IRIS_excerpt.csv');
[coeff,score,latent] = pca(A);
A_new1 = score(:, 1:2)
x = A_new1(:, 1)
y = A_new1(:, 2)
scatter(x, y)