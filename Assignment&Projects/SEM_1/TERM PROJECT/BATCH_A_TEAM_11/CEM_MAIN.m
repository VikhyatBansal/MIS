P = 10.0 :5.0 :100.0     %Value of external load changing from 10kN to
                          %100kN with increment of 5kN
a = [10 0 0; 0 12.5*sind(27) 0; 0 0 12.5*sind(53)];
b = [40*P ; (-150+(((7*P)/2)*(12.5))) ; 30*P ];
y = a\b;                % Three previously calculated forces for different
                        % values of P with step size of 5kN
c = y([1],:);           % Member force Fde
D = y([2],:);           % Member force Fhc
e = y([3],:);           % Member force Fck

x = [1*cosd(27) -1*sind(63) 1*sind(27) 0 0 0 0 0  0 0 0;
1*sind(27) -1*cosd(63) -1*cosd(27) 0 0 0 0  0 0 0 0;
0 0 -1*cosd(63) -1 1 -1*cosd(54) 0 0  0 0 0;
0 0 +1*sind(63) 0 0 +1*sind(54) 0 0  0 0 0;
0 0 0 0 0 0 -1*sind(64) 1*cosd(63)  0 0 0;
0 0 0 0 0 0 -1*cosd(64) -1*sind(63)  0 0 0;
0 0 0 0 -1 0 0 0 -1*cosd(63) 0 1*cosd(53);
0 0 0 0 0 0 0 0  1*sind(63) 0 1*sind(53);
-1*cosd(63) 0 0 0 0 1*cosd(90) 1*cosd(26)  0 1*cosd(64) 1 0;
-1*sind(63) 0 0 0 0 -1*cosd(90) 1*sind(26)  0 -1*sind(64) 0 0;
0 0 0 0 0 0 0 -1*cosd(64)  0 -1 -1*cosd(52);
0 0 0 0 0 0 0 1*sind(64)  0 0 -1*sind(52)];    % 12 equations with 11
                                               %unknowns as force Fde has
                                               %already been calculated
                                               %above

z = [0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
P;
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
-D*cosd(27);
P-D*sind(27);
-c; 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
P; 
-e*cosd(52);
-e*cosd(52)];

            %our matrix which will have different values every time due
            %varying value of P, c, D , e which are nothing but external
            %load and member forces respectively.

m = x\z

Ffg = m([1],:);
Faf = m([2],:);
Ffj = m([3],:);
Faj = m([4],:);
Fjd = m([5],:);
Fgj = m([6],:);
Fgh = m([7],:);
Fhk = m([8],:);
Fdg = m([9],:);
Fgk = m([10],:);
Fkd = m([11],:);




