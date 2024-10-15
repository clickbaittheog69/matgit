%Multiples of a given number
clc; clear;
num = randi([1 12]);
% Set variable for number of iterations
mult = randi([2 9]);

% Reset variables here if desired

fprintf('Number to be multiplied: %d\n', num)
fprintf('Number of multiples: %d\n', mult)

% Set counter to track current iteration
iter = 0;

% Output desired multiples
while iter < mult
  iter = iter+1;
    result = num * iter;
    fprintf('%d ',result);
   
    
    
end