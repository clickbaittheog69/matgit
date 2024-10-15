% Homework Module 8
% Maxi Yatzy Score Keeper
clc; clear;

% Collects input from user
dice = sort(input('Enter your 6 dice: '));

% Sets initial values
lgth = length(dice);

% Calc. chance
chance = sum(dice);


% Checks for three pairs
pair_ck = dice;
pairs = 2;
% Iterates through list of dice
for ii = 1:1:lgth
    % Compares list for pairs
    for jj = (ii + 1):1:lgth
        if pair_ck(ii) == pair_ck(jj) && pair_ck(ii) ~= 0 
            pairs = pairs + 11;
            pair_ck(ii) = 0;
            pair_ck(jj) = 0;
        end
    end
end

% Sets points for pairs
if pairs ~= 35
    pairs = 0;
end

% Check for straights
str_ck = dice;
small = 0;
large = 0;
str = 1;
% Iterates through list of dice
for ii = 2:1:(lgth - 1)
    % Checks if value above is correct
    if str_ck(ii) + 1 == str_ck(ii + 1)
        str = str + 1;
    % Checks if value below is correct
    elseif str_ck(ii) - 1 == str_ck(ii - 1) || str_ck(ii) == str_ck(ii - 1)
        continue;
    elseif str == 3 || str == 4
        str = str + 1;
        continue;
    % Cancels out straight if not correct
    else
        str = 0;
    end
end

% Sets the pts for the small & large straight
if str == 4
    small = 40;
elseif str == 5
    small = 40;
    large = 50;
end

% Check for maxiyatzy
maxiyatzy = 0;
if dice(1) == dice(6)
    maxiyatzy = 100;
    % Sets it so there are no pairs
    pairs = 0;
end

% Outputs results
fprintf('Chance:                %g points\n', chance)
fprintf('Three pairs:           %g points\n', pairs)
fprintf('Small Straight (4):    %g points\n', small)
fprintf('Large Straight (5):    %g points\n', large)
fprintf('Maximatzy:             %g points', maxiyatzy)