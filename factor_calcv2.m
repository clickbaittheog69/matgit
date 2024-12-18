clc; clear;
format rational
% creates matrix to store number of terms 
terms = input('Enter the number of terms: ');
A = zeros(1,terms);
%

%stores all the terms
for ii = 1:terms
    A(ii) = input('Enter the nth term starting from AN: ');
end
Anabs = abs(A(1));
A0abs = abs(A(terms));
y = 0;
fprintf('The factored polynomial is: ')
ballschecker = 1;
%

%
% plist = zeros(1,A0abs);
% qlist = zeros(1,Anabs);
xlist =zeros(1,A0abs*Anabs);
c = 1;
% xlist(1) = 0;
%

%q and p checker
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
%duplicate checker 
        if xlist(c) ~= sym(p/q)
            xlist(c) = sym(p/q);
            c = c+1;
        end
%
    end
end

for ii = length(xlist):-1:1
    if xlist(ii) == 0
        xlist(ii) = [];
    end
end
xlist = unique(xlist);
roots = zeros(1,length(xlist));

% polynomial checker yo
for ii = 1:length(xlist)
    mommy = 1;
    y = 0;
    [p, q] = numden(sym(xlist(ii)));
    for poop = terms:-1:1
        y = A(mommy)*(xlist(ii)^(poop-1)) + y;
        mommy = mommy+1;
    end
    if y == 0
        
        if floor(xlist(ii)) == ceil(xlist(ii))
            fprintf('(x - %g)', xlist(ii));
            roots(ballschecker) = xlist(ii);
        ballschecker = ballschecker + 1;
        else
            fprintf('(%gx - %g)', q, p)
            roots(ballschecker) = p;
        ballschecker = ballschecker + 1;
        end
    end
    xlist(ii) = xlist(ii) * (-1);
    y = 0;
    mommy = 1;
    for poop = terms:-1:1
        y = A(mommy)*(xlist(ii)^(poop-1)) + y;
        mommy = mommy+1;
    end
    if y == 0
        
        if floor(xlist(ii)) == ceil(xlist(ii))
            fprintf('(x + %g)', abs(xlist(ii)));
            roots(ballschecker) = xlist(ii);
        ballschecker = ballschecker + 1;
        else
            fprintf('(%gx + %g)', abs(q), abs(p))
            roots(ballschecker) = p;
        ballschecker = ballschecker + 1;
        end
    end
end
roots = unique(roots);
for ii = length(roots):-1:1
    if roots(ii) == 0
        roots(ii) = [];
    end
end
fprintf('*%g\n', A0abs/abs(prod(roots)));