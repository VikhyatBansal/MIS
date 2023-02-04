A=[8 9 ; 9 6 ];
a=[8;9];
b=[9;6];
q1=a/norm(a);
x=transpose(a);
B=b-(a*((x*b)/(x*a)));
y=transpose(B);

q2=B/norm(B);
Q=[q1 q2];
disp(Q);
p1=transpose(q1);
p2=transpose(q2);
R=[p1*a,p1*b,;0,p2*b];
D=Q*R;
disp(R);
disp(D)
K=a+B;
M=inv(R)*transpose(Q)*K;
disp(M)