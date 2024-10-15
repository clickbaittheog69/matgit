clc; clear;
dice = input("Enter your 6 dice: ");

l = 0;
%chance calc
fprintf('Chance:                %g points\n', sum(dice)); %19
%

%3 pairs calc
for ii = 1:6 %checks for pairs
    check =  find(dice(1:6)==ii);
    if length(check) == 2
        l = length(check) + l;
    end
end
if l == 6 %if there are 3 pairs print this
    fprintf('Three pairs:           %g points\n', 35); %13
else
    fprintf('Three pairs:           %g points\n', 0); %13
end

%small straight calc
ssc = 1;
if min(dice) > 3
    fprintf('Small Straight (4):    %g points\n', 0); %6
else
    for ii = min(dice):min(dice)+3
        ssc = length(find(dice == ii))*ssc; %if mindice+ii doesn't exist it will be zero
    end
    if ssc == 0
        fprintf('Small Straight (4):    %g points\n', 0); %6
    else
        fprintf('Small Straight (4):    %g points\n', 40) %6
    end
end

%large straight calc
lsc = 1;
if min(dice) > 2
    fprintf('Large Straight (5):    %g points\n', 0); %6
else
    for ii = min(dice):min(dice)+4
        lsc = length(find(dice == ii))*lsc;
    end
    if lsc == 0
        fprintf('Large Straight (5):    %g points\n', 0); %6
    else
        fprintf('Large Straight (5):    %g points\n', 50) %6
    end
end

%maxiyatzy WORKS
if max(dice) == min(dice)
    fprintf('Maxiyatzy:             %g points', 100);
else
    fprintf('Maxiyatzy:             %g points', 0);
end