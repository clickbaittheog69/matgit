%Multiples of a given number
clc; clear;
num = randi([1 9]);

% Reset num variable here to check specific values

fprintf('Number to be multiplied: %d\n', num)

% Set number of iterations
    it_max = 10;

% Set counter to track current iteration
iter = 1;

while iter <= it_max
result = num*iter;
fprintf('%d ', result);
iter = iter+1;
end
