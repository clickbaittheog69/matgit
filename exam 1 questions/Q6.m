clc; clear;
x = input('Enter a positive number: ');
y = x;
while y > 0
    y = y-1;
end
y = abs(y);
x = x+y;
fprintf('%g', x);