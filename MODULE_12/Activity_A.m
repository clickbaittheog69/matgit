clc; clear;

%M12 Activity A

v1 = randi(10, 1, 5);
v2 = randi(10, 1, 5);

% Input test values if desired
% v1 = 1:2:10;
% v2 = 2:2:10;

fprintf('Enter a vector of 5 values: '); fprintf('%d ', v1);
fprintf('\nEnter a vector of 5 values: '); fprintf('%d ', v2); fprintf('\n')

% Script for debugging begins after this line
v1 = sort(v1);
v2 = sort(v2);  %changed v1 to v2
v3 = [];

index1 = 1;
index2 = 1; %changed from 2 to 1 

for ii = 1:1:10 %changed to 10 from 5
    if index1 <= 5 && (index2<=5 && v1(index1) <= v2(index2))  %index1, <=, &&, <=
        v3 = [v3 v1(index1)]; %changed to [] from ()
        index1 = index1 + 1;
    else
        v3 = [v3 v2(index2)]; 
        index2 = index2 + 1; %changed to index2
    end
end

fprintf('%d ', v3)