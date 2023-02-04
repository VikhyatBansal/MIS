N=[10000];
plambda=rand(1999,1);
t=[0];
dt=0.05;
for i=2:1:2000
    if(0<plambda(i-1))<0.35
        l=0.05;
    elseif (0.35<plambda(i-1))<0.6
        l=0.1;
    elseif (0.6<plambda(i-1))<0.85
        l=0.15;
    elseif (0.85<plambda(i-1))<1
        l=0.2;
    end
    N(i)=N(i-1)-l.*dt*N(i-1);
    t(i)=t(i-1)+dt;
end
plot(t,N)
Ni=1000;
ti=interp1(N,t,Ni);
tt=3.46573;
Nt=interp1(ti,Ni,tt);
hold on
plot(ti,Ni,'r')
HALf_LIFe=ti;
format rational
numberofnucleiiattheoriticalhalflife=Nt;