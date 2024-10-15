% M6 Activity B
clc; clear;
n = 5;
%n = randi([2, 100], 1); %added specifier for 1x1 matrix size
fprintf('Value of n: %d\n', n); %semicolon and \n

sum = 0;

for ii = 1:n %removed :1 step
    f = (2*ii)+1; %changed f = n to that
    for jj = (f-1):-1:1 %made it an inverse loop starting from f-1 for the factorial
        f = (f*jj); %changed ii to jj
    end
    sum = sum + (2^(ii + 1)/f); %added extra parenthesis just cuz
end

fprintf('The sum is %g', sum); %changed f to sum
