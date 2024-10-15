clc; clear;

num = input('Enter a positive number greater than 1: ');
sum = 0;
for ii = 1:num
    sum = (factorial(num))/((2*ii)-1) + sum;
end

fprintf('%g', sum)