%Wallis Formula
clc; clear;
%terms = randi([1 100]);

% Try a Test Case
 terms = 50;

fprintf('Number of terms to use: %d\n', terms);

% Create initial variable values
n = 1;  % store initial value of terms - why might you need this?
pie = 2;  % Value of pi with 1 term - DO NOT use variable names MatLab recognizes, such as 'pi'

% Create variable(s) that update for each new term
num = 2;
den1 = 1;
den2 = 3;
term_iters = 1;
% Iterate to produce the desired number of terms
while term_iters < terms
    term_iters = term_iters +1;
    % update value of pie
    pie = pie*(num^2/(den1*den2));
    % update any other variables needed for next iteration
    num = num+2;
    den1 = num-1;
    den2 = num+1;


end
fprintf('Pi with %g terms is %.08f', terms, pie)
% Output final approximation of pi and total number of terms