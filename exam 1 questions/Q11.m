clc; clear; 
cash = floor(input('How much cash do you have? '));
wrappers = 0;
candybars = 0;
while cash >= 4 
    cash = cash -4;
candybars = candybars + 1;
wrappers = wrappers + 1;
end
while wrappers >= 3
    wrappers = wrappers - 3;
    candybars = candybars + 1;
end
fprintf('%g', candybars)
