clc; clear;
num = input('Enter an odd number less than 10: ');
rownumber = 1;
com = mod(num, 2);
if com ~= 0
    for ii = num:-1:1 %star iters
        cn = ii;
        for jj = 1:ii-1
            fprintf('** ');
        end
        for kk = 1:rownumber %number of times %g printed
            digits = cn*num;
            if digits >= 10 %cursed align right
                fprintf('%g ',cn*num);
                cn = cn + 1;
            else
                fprintf(' %g ',cn*num);
                cn = cn + 1;
            end %it works
        end
        fprintf('\n')
        rownumber = rownumber + 1;
    end

elseif num >= 10
    fprintf('Invalid input. Please try again!')
else
    fprintf('Invalid input. Please try again!')
end