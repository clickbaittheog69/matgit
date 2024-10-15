clc; clear;

r1 = randi(1000);
r2 = randi(1000);
r3 = randi(1000);

fprintf('R1 = %g\nR2 = %g\nR3 = %g\n',r1,r2,r3)

R = ((1/r1)+(1/r2)+(1/r3))^(-1);

fprintf('The equivalent resistance is %g',R);