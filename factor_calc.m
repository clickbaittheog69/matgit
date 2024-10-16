clc; clear;
terms = input('Enter the number of terms: ');
A = zeros(1,terms);

ballschecker = zeros(1,100);
c = 0;



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
        
        %x condition adder
        c = c+1;
        ballschecker(c) = x;

        %polynomial summation
        pp = 1;
        y = 0;        
        for kk = terms:-1:1 %for y 
            y = A(pp)*(x^(kk-1)) + y;
            pp = pp+1;
        end


        if y == 0 
            if floor(x) == ceil(x)
                fprintf('(x - %g)', x)
                ballschecker(c) = x;
                c = c+1;

            else
                fprintf('(%gx - %g)',q, p)
                ballschecker(c) = x;
                c = c+1;
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
                ballschecker(c) = x;
                c = c+1;
            else
                fprintf('(%gx + %g)',q, p)
                ballschecker(c) = x;
                c = c+1;
            end
        end
    end
end

