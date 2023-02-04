A=[1 2 0; 4 8 7; 3 9 5];
a=[1;4;3];
b=[2;8;9];
c=[0;7;5];
q1=a/norm(a);
x=transpose(a);
B=b-(a*((x*b)/(x*a)));
y=transpose(B);
C=c-(a*((x*c)/(x*a)))-(B*((y*c)/(y*B)));
q2=B/norm(B);
q3=C/norm(C);
Q=[q1 q2 q3];
disp(Q);
p1=transpose(q1);
p2=transpose(q2);
p3=transpose(q3);
R=[p1*a,p1*b,p1*c;0,p2*b,p2*c;0,0,p3*c];
D=Q*R;
disp(R);
disp(D)
K=a+B+C;
M=inv(R)*transpose(Q)*K;
disp(M)

