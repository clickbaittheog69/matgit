clc; clear;
n1 = input('Enter the first number: ');
n2 = input('Enter the second number: ');
x = 2;
acm = n1*n2;
if n2 > n1
for ii = 1:n2
    n1n = mod(n1, x);
    n2n = mod(n2, x);
    if n1n == 0 && n2n == 0
        lcm = ((n1*n2)/x);
        fprintf('The LCM of %g and %g is %.0f!',n1,n2,lcm); 
    end
  x = x+1;
end
else 
    for ii = 2:n1
    n1n = mod(n1, x);
    n2n = mod(n2, x);
    if n1n == 0 && n2n == 0
        lcm = ((n1*n2)/x);
        fprintf('The LCM of %g and %g is %.0f!',n1,n2,lcm); 
    end
  x = x+1;
    end
end


if lcm == acm
     lcm = (n1*n2);
        fprintf('The LCM of %g and %g is %.0f!',n1,n2,lcm); 

end