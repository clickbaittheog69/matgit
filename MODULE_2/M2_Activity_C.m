clc; clear;
% M2 B: Calculate rectangle perimeter, area, and diagonal
% define variables
length = 20*rand; 
width = 40*rand;

%length = 3;
%width = 8;

% display input variables
fprintf('Length: %g\n', length)
fprintf('Width: %g\n', width)

% calculate perimeter, area, and the diagonal
Per = (length*2)+(width*2);
Area = length*width;
Diag = sqrt(length^2+width^2);

fprintf('Rectangle perimeter: %.2f\nRectangle area: %.2f\nRectangle diagonal: %.2f',Per,Area,Diag);