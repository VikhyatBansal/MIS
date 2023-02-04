A= [11 -5 -6; -5 19 -2; -1 -1 2]
B= [12; 0; 0]
AUG_MATRIX= [A B]
C= rref(AUG_MATRIX)
C(:,4)
inv(A)
inv(A)*B
A\B