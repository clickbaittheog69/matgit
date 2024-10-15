clc; clear;
% Module 5 - Activity C: Staircase

% User input - size of table
height = randi(10);  % should be randi(10) for submission

% Display height
fprintf('Staircase height: %g\n', height);

% Display staircase pattern
spaces = height - 1;
for ii = 1:height

    for jj = 1:spaces
        fprintf(' ');
    end
    for kk = spaces+1:height
        fprintf('#');

    end
    fprintf('\n');
    spaces = spaces - 1;
end
