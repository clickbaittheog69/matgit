% Module 8 - Activity B: Cut the Pipes
clc; clear;
% Initial input
total = randi([2 10]);
pipes = randi(50, 1, total);

% Test specific values here if desired



% Display vector of pipe lengths
fprintf('Pipe lengths: '); fprintf('%d ', pipes); fprintf('\n')

% Create a variable to store the total number of cuts
cuts = 0;

% Use a loop to perform the 'cuts' until the pipes vector is empty.
while ~isempty(pipes)
    minpip = min(pipes);
    for ii = 1:length(pipes)
        pipes(ii) = pipes(ii) - minpip;
    end
    pipes(pipes == 0) = [];
    cuts = cuts + 1;
end

% Final output
fprintf('%d cuts are needed!', cuts)