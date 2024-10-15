clc;  clear;
n = 0;
sum = 0;
newsum = 0;

while n < 4
    %beginning
comsum = 0;
    newsum = newsum + 1;
    sum = sum + newsum; %summation
    if sum == 1
        continue
    else
        for ii = 1:newsum
            com = mod(sum, ii);
            comsum = comsum + com;
        end
        if comsum == 0
            n = n + 1;
            fprintf('%g\n', sum);
        end
    end


end