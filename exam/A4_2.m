clc; clear;
fact = 1;
num = input('Enter a pisitive number greater than 1: ');
for ii = 1:num 
    fact = fact*ii;
end

sum = 0;
for jj = 1:num
    sum = fact/((2*jj)-1) + sum;
end
fprintf('%g', sum)
