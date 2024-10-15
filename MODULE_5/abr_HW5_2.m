clc; clear;
height = input('Enter the height of the pattern:');
repeat = height;
x = 1;

for ii = 1:height
    for jj = repeat+1:height
        fprintf('%g', x);
    end
    for kk = x:height
        fprintf('%g',kk);
    end
    fprintf('\n');
    x = x+1;
    repeat = repeat - 1;
end