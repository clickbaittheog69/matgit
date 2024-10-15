clc; clear;

x = input('Enter a value > -1 and <= 1: ');
if x < -1 || x > 1
    fprintf('Invalid input. Please try again!\n');
else
actualv = log(1 + x);
error = 1;
aprxv = 0;
n = 1;

while error >= 1*(10^(-7))
    aprxv = aprxv + ((-1)^(n-1))*((x^n)/n);
    error = abs(actualv-aprxv);
    n = n+1;
end

fprintf('The approximate value is %.08f\n', aprxv);
fprintf('The actual value is %.08f\n', actualv);
fprintf('%d terms were required.\n', n-1);
end