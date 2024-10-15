clc; clear;
% Module 5 - Activity A: Equivalent resistance

% Initial input
num = randi(10);

% Test specific values, uncomment the two lines below
% res_list = [10 10 20];
% num = length(res_list);

% Display total number of resistors
fprintf('Total number of resistors: %d\n', num)

% Calculate the value of the DENOMINATOR
den = 0;

for ii = 1:num
    res = randi(50)*10;
    % res = res_list(ii); % uncomment when checking specific values
    fprintf('Resistor R%g: %g\n', ii, res);
    den = den + (1/res);
end

% Calculate equivalent resistance (R) and output results
R = 1/den;
fprintf('The equivalent resistance is %g ohms', R);
