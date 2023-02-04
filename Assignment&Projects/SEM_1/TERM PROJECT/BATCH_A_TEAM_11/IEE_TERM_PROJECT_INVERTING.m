gain=4;
frequency = 25;

t= 0:0.1:1;

Vin= 8*sqrt(3)*sawtooth(2*pi*frequency*t,0.5);
Vout = -gain*Vin

plot (t,Vin,'LineWidth',2)
hold on
plot(t,Vout,'LineWidth',2)

xlabel('TIME')
ylabel('VOLTAGE')














