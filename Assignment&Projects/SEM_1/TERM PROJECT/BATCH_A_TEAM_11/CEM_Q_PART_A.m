P = 10.0 : 5.0: 100.0    %Value of external load changing from 10kN to
                         %100kN with increment of 5kN
a = [10 0 0; 0 12.5*sind(27) 0; 0 0 12.5*sind(53)];
b = [40*P ; (-150+(((7*P)/2)*(12.5))) ; 30*P ];
x = a\b;

Fde = x([1],:)
Fhc = x([2],:)
Fkc = x([3],:)