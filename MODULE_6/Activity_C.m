% M6 Activity C

x = 20*rand;
N = randi([1, 20],1); %changed the value from 1 to 20 in a 1x1 matrix
fprintf('The value of x: %.02f\nThe value of N: %g\n', x, N) 

sum = 0; 

for k = 1:N %removed :1 step
    fact = k; %changed from 1 to k
    for ii = k-1:-1:1 %changed from 1:2:k to k-1:-1:1 because wtf
        fact = fact * ii;
    end
    newterm = fact + 1/((x^k) - 1);
    sum = newterm+sum; %added +sum
end

fprintf('The sum of series is %g ', sum);