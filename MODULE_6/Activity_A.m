% M6 Activity A
clc; clear;
pattern = 3;
num = 7;
den = 2; %changed 1 to 2
ii = 1;

while ii <= 100 
   pattern = pattern + (num/den);
   num = num + 4; %changed 3 to 4 
   den = den * 2; %changed addition to multiplication 
   ii = ii + 1;
end

fprintf('%g', pattern); %changed den to pattern 
