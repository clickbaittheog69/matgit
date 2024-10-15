clc; clear;

x = input('Enter a positive number greater than 1: ');
sum = 0;
i = 1;
while sum < x
    i = i+1;
    sumnew = (i^i)/(i-1);
    sum = 1 + sumnew;
end

fprintf('The number of terms is %g', i);