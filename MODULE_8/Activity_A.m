clc; clear;
% Module 8 - Activity A: Vector Rotation
% Initial input
%rot = randi([0 50]);

% Test specific values here if desired
rot = 3;

% Display total number of rotations
fprintf('Total number of rotations: %d\n', rot)

% Create a vector with the values 1 to 15
vals = 1:15;

% Use a loop to shift all values 1 positions to the right, where
% the last value then moves to the position.
for ii = 1:rot
    store15 = vals(15);
    for jj = 15:-1:2
        vals(jj) = vals(jj-1);
    end
    vals(1) = store15;
end

    

% Final output
fprintf('Rotated values: ')
for ii = 1:15
    fprintf('%d ', vals(ii));
end