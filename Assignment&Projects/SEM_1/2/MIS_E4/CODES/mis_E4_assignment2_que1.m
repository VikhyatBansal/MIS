clc; clear all; close all;
Vo = [100;40];
A = [1 1/2; 6 0];
[t,u] = eig(A);
c = inv(t);
for k=1:20
    Vk = t*(u.^k)*c*Vo;
    a(k) = Vk(1,:);
    j(k) = Vk(2,:);
end
plot(a,'linewidth',1);
hold on
plot(j,'LineWidth',1);
xlabel("year");
ylabel("population");
title("Year VS Population")
legend('Number of juveniles','Number of adults')