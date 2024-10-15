clc; clear;
% M2 C: Line intersection point

% define constant parameters for two lines
%m1 = -5 + 10*rand;
%b1 = -5 + 10*rand; 
%m2 = -5 + 10*rand;
%b2 = -5 + 10*rand; 

m1 = 0.50;
b1 = 1.00;
m2 = -2.00;
b2 = 20.00;

% display input variables
fprintf('m for Line 1: %.2f\nb for Line 1: %.2f\nm for Line 2: %.2f\nb for Line 2: %.2f\n', m1, b1, m2, b2)

%solve for x value
x = (b2-b1)/(m1-m2);

%solve for y value
y = m1*x+b1;

fprintf('The intersection point is (%g,%g)',x,y);

