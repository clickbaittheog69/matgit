clc; clear;

ii = 41;
count = 0;

while ii >= 25
    ii = ii - 25;
    count = count + 1;
end
while ii >= 10
    ii = ii - 10;
    count = count + 1;
end

fprintf('%g', count);