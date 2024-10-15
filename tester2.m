clc; clear;

terms = input('Enter the number of terms: ');
x=1;

for ii = 1:1:terms
    A(ii) = input('Enter the nth term starting from AN: ');
end
y=0;
for kk = 1:terms 
    y = A(kk)*(x^kk) + y;
end
