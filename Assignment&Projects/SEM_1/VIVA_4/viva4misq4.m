N1=10000;
N2=0;
t=0;
plambda1=rand(1999,1);
plambda2=(0.4*rand(1999,1))+0.05;
dt=0.05;
for i=2:1:2000
   if(0<plambda1(i-1))<0.35
        l=0.05;
    elseif (0.35<plambda1(i-1))<0.6
        l=0.1;
    elseif (0.6<plambda1(i-1))<0.85
        l=0.15;
    elseif (0.85<plambda1(i-1))<1
        l=0.2;
    end
    N1(i)=N1(i-1)-l.*dt*N1(i-1);
    t(i)=t(i-1)+dt;
    N2(i)=dt*(plambda1(i-1)*(N1(i-1))-plambda2(i-1)*(N2(i-1)))+N2(i-1);
end
plot(t,N2)
Ni=1000;
ti=interp1(N1,t,Ni)
Nt=interp1(t,N2,ti);
numberofdaughternucleiiatparenthalflife=Nt;
hold on
plot(ti,Nt,'*r')