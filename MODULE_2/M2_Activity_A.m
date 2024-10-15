clc; clear; 

%vars
r1 = 10;
r2 = 10;
r3 = 20;

%the actual calculator
R = ((1/r1)+(1/r2)+(1/r3))^(-1);

%the print func
fprintf('The equivalent resistance is %g ohms',R);