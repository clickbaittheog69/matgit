% M3 B: Water usage billing
clc; clear;
% set amount of usage in gallons
usage = randi(40000);

% If desired, test specific values

% display input variable
fprintf('Water usage in gallons: %d\n', usage)

% determine which calculation to use and output results

if usage < 6000 
   c1 = (usage/1000)*2.35 ;
elseif usage > 5999 
    if usage < 20001
        c2 = ((usage - 6000)/1000)*3.75;
    elseif usage > 20000
        c3 = ((usage - 20000)/1000)*6;
    end
end

c1b = 2.35 * (5999/1000);
c2b = 3.75 * (14000/1000);

if usage < 6000
    fprintf('Money owed: $%.2f', c1);
elseif usage > 5999
    if usage <20001
    fprintf('Money owed: $%.2f', c1b+c2);
      elseif usage > 20000
    fprintf('Money owed: $%.2f', c1b+c2b+c3);
    end
end

        
