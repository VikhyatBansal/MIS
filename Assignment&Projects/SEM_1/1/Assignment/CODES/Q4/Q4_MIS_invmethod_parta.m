A = [-8 14;7 14]
b = [6;42] ;                    %Current = [i2;i3]
Current = inv(A)*b
i1 = 3;
ix = i1 - Current(2,1)