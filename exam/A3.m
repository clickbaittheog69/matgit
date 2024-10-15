clc; clear;

num = input('Enter a positive number: ');
comcheck = 1;
if num == 1
    fprintf('stop trying it')
else
    for ii = 2:num-1
        com = mod(num, ii);
        comcheck = com * comcheck;
    end
    
    if comcheck == 0
        fprintf('No!')
    else
        fprintf('Yes!')
    end
end