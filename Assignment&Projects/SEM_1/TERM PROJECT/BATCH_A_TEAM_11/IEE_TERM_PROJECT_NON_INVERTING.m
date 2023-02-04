gain=2;
frequency =  20;

t = 0:0.0005:1;

Vin = 15*square(2*pi*frequency*t);
Vout = gain*Vin

plot  ( t, Vin ,'LineWidth',2)
hold on
plot ( t, Vout, 'LineWidth',2)
hold on

xlabel('TIME')
ylabel('VOLATGE')













