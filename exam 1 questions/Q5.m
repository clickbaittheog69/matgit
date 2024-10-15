clc; clear;
a = randi([1 100]);
b = randi([1 100]);
c = randi([1 100]);

if a < b && a < c
    fprintf('%g',a);
elseif b < a && b < c 
    fprintf('%g', b);
else 
    fprintf('%g', c);
end