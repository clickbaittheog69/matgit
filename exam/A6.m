clc; clear;

n = 0;
x = 0;
                                 %set counter variables to be zero
while n < 4                     %creates how many perfect numbers i want to find
    x = x + 1;                  %starts checking numbers from zero
    sum = 0;                        %creates/resets sum variable
    for ii = 1:x/2                      %checks if x is divisible by ii, checking from 1 to half of x
        com = mod(x,ii);                        %mod gives remainder
        if com == 0                         %if mod is 0, ii is a perfect divisor
            sum = ii + sum;                         %add this to a list of growing summation of all perfect divisors
        end
    end
    if sum == x                         %check if the sum of all perfect divisors is the same as x 
            fprintf('%g\n', sum);                   %print the number
            n = n+1;                        %add 1 to counter variable n
    end
end