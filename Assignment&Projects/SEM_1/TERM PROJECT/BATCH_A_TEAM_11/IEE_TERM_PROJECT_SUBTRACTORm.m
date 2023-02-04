gain1 = 4;
frequency1  = 25; 
t  = 0:0.01:1; 
Vin  = 8*sqrt(3)*sawtooth(2*pi*frequency1*t,0.5);   
Vout = -(gain1)*Vin;

gain2 = 2;
frequency2  = 20;
Vin  = 15*square(2*pi*frequency2*t);
Vout2 = gain2.*Vin;

Vin1=(1.25).*Vout;
Vin2=(0.75).*Vout2;

VOUT=Vin2-Vin1;

plot(t,VOUT)
xlabel("time");
ylabel("output voltage of opamp subtractor")
legend("VOUT vs time")





