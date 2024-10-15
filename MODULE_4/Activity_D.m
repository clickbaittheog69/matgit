%Change
clc; clear;

%change = randi([1 100]);
change = 99;

fprintf('Total amount of change (cents): %d\n', change)

% Create a counter to keep track of number of coins
coins = 0;
% Iterate as long as there is still money owed
while change > 0
    % Use condition statements to determine how much will be 'given back' each iteration
if change >= 25
 change = change - 25;
 coins = coins + 1;
    
elseif change >= 10
    change =change- 10;
 coins = coins + 1;
elseif change >= 5
    change = change- 5;
     coins = coins + 1;
else 
    change = change- 1;
 coins = coins + 1;
    % update any variables needed for the next iteration
	
end
end

% Produce final command window output
fprintf('%g coins needed!', coins);
