%find a way to disregard p and q if it is not fully simplified i.e. 4/2
%dont compute if 2/1 already exists
        

%idea 1: as i iterate, create a list of already checked terms. if any new x
%matches anywhere on that list, try the next term
%problem: i would need to create an ever-expanding array/cell/matrix and
%search through it. not great.also idk how to search and match

%idea 2: check for simplification. if it can be simplified, i probably
%already checked it. skip it. 
%problem: x = sym(p/q) returns an already simplified version. no good way
%to check.

%also this shit doesn't work if you have a 0. anywhere. x^2 + 1 straight up
%doesn't work.

 clear;
terms = input('Enter the number of terms: ');
A = zeros(1,terms);

simux = zeros(1,100);
c = 1;



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
        
        %duplicate checker 
        for qq = 1:c
            qqqq = sym(simux(qq));
            if qqqq == x
                fprintf('duplicate spotted! offender noted.')
            end
        end

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
                simux(c) = x;
                c = c+1;

            else
                fprintf('(%gx - %g)',q, p)
                simux(c) = x;
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
                simux(c) = x;
                c = c+1;
            else
                fprintf('(%gx + %g)',q, p)
                simux(c) = x;
                c = c+1;
            end
        end
    end
end

