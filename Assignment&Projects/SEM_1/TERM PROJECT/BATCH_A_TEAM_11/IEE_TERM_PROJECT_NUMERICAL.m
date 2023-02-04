v0 = 0;
t0 = 0;
h = 0.001;
t = 0:h:1000;
l = input("The value of the inductance is :" );
r = input("The value of the resistance is :" );
I(1) = v0;
t(1) = t0;

gain1 = 4;
frequency1  = 25; 

Vin  = 8*sqrt(3)*sawtooth(2*pi*frequency1*t,0.5);   
Vout = -(gain1)*Vin;

gain2 = 2;
frequency2  = 20;
Vin  = 15*square(2*pi*frequency2*t);
Vout2 = gain2*Vin;

Vin1=(1.25)*Vout;
Vin2=(0.75)*Vout2;

VOUT=Vin2-Vin1;

ind = randsample(103,1);

for i = 1:102
f = @(t,i) ((VOUT(ind)/l) - (r/l)) ;
t(i+1) = t(i) + h;
I(i+1) = I(i) + (h)*(f(t(i)+(h/2),I(i)) + (h/2)*f(t(i),I(i)));
E = 0.5*l.*((I).^2);
end

% plot(t,v,'LineWidth',2)
plot(I,E,'LineWidth',2)




