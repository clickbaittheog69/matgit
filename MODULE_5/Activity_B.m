clc; clear;
% Module 5 - Activity B: Multiplication table

% User input - size of table
sz = randi(10);  % should be randi(10) for submission

fprintf('Size of multiplication table: %g\n',sz);

% Display mult. table
for ii = 1:sz
    for jj = 1:sz
        n = ii * jj;
        fprintf('%4d',n);
    end
    fprintf('\n');
end

