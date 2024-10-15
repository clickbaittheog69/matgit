clc; clear;
terms = input('Enter the number of terms: '); %creates number of terms
A = [1, terms]; %creates matrix to preallocate size
for ii = 1:terms
    A(ii) = input('Enter the nth term starting from AN: '); %inputs values into matrix
end

%A(1) is An
%A(terms) is A(0) [n,n-1,n-2,...,terms] [1,2,3,... n]

Anabs = abs(A(1)); 
A0abs = abs(A(terms));
y = 0;
for ii = 1:A0abs %p checker 
    comp = mod(A(terms), ii);
    if comp == 0 
        p = ii;
    else
        continue
    end
    for jj = 1:Anabs %q checker
        comq=mod(A(1), jj);
        if comq == 0 
            q = jj;
        else
            continue
        end
        x = sym(p/q); %positive x condition 

        %next line is the summation of polynomial
        pp = 1;
        y = 0;
        for kk = terms:-1:1 %for x
            y = A(pp)*(x^(kk-1)) + y;
            pp = pp+1; 
        end
        % y = A3*(x^3)+A2*(x^2)+A1*(x)+A0;
        if y == 0
            if floor(x) == ceil(x) %checks integer condition
                fprintf('(x - %g)', x)
            else
                fprintf('(%gx - %g)',q, p)
            end
        end
        x = x*(-1); %makes x negative
        pp = 1;
        y=0;
        for kk = terms:-1:1 %for x
            y = A(pp)*(x^(kk-1)) + y;
            pp = pp+1; 
        end
        if y == 0
            if floor(x) == ceil(x)
                fprintf('(x + %g)', p/q)
            else
                fprintf('(%gx + %g)',q, p)
            end
        end
    end
end