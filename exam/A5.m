clc; clear;

A = input('Enter low value in range: ');
B = input('Enter high value in range: ');
N = input('Enter any whole number: ');

n = 0;
for ii = A:1:B %incrementing A
    for jj = ii:B %incrementing B 
        sum = ii + jj;
        if sum == N
            n = n+1;
        end
    end
end
fprintf('%g pairs', n);