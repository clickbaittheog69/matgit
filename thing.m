clear; clc;
terms = input('Enter the number of terms: ');
A = [1,terms];
for ii = 1:terms
    A(ii) = input('Enter the nth term starting from AN: ');
end
Anabs = abs(A(1));
A0abs = abs(A(terms));
y = 0;
fprintf('The factored polynomial is: ')
for ii = 1:A0abs
    comp = mod(A(terms), ii);
    if comp == 0 %p checker
        p = ii;
    else
        continue
    end
    for jj = 1:Anabs
        comq=mod(A(1), jj);
        if comq == 0 %q checker
            q = jj;
        else
            continue
        end
        x = sym(p/q); %positive x condition
        pp = 1;
        y = 0;
        for kk = terms:-1:1 %for x
            y = A(pp)*(x^(kk-1)) + y;
            pp = pp+1;
        end
        if y == 0
            if floor(x) == ceil(x)
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