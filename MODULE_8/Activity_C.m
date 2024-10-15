% Module 8 - Activity C: Selection Sort
% Initial input
clc; clear;
%vectors = struct2cell(load('M8C_vectors'));
%vectors = vectors{1};
%vec = vectors{randi(length(vectors))};

% Test specific values here if desired
 vec = [52 -66 3 100 100 3 -42 -42];

% Display vector of values
fprintf('Vector values: '); fprintf('%d ', vec); fprintf('\n')

% Write your repeating algorithm below this line

for ii = length(vec):-1:2
    storelast = vec(ii);
    vecloc = find(vec(1:ii) == max(vec(1:ii)), 1);
    vec(ii) = max(vec(1:ii));
    vec(vecloc) = storelast;
end

fprintf('Sorted values: ')
for ii = 1:length(vec)
    fprintf('%d ', vec(ii))
end