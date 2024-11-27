clc;clear;
matrix = zeros(3,3);
locstore = [1 1];
matrix(locstore(1),locstore(2)) = 1;

c = 0;

for jj = 1:-2:-1
    if locstore(1) + jj >3 || locstore(1) +jj <=0
        continue
    elseif matrix(locstore(1) + jj, locstore(2)) == 0
        c = c+1;
    end
end

for ii = 1:-2:-1
    if locstore(2) + ii >3 || locstore (2)+ ii <= 0
        continue
    elseif matrix(locstore(1), locstore(2)+ii) == 0
        c = c+1;
    end
end
prob = (1/c);
for jj = 1:-2:-1
    if locstore(1) + jj >3 || locstore(1) +jj <=0
        continue
    elseif matrix(locstore(1) + jj, locstore(2)) == 0
        matrix(locstore(1) + jj, locstore(2)) = prob;
    end
end

for ii = 1:-2:-1
    if locstore(2) + ii >3 || locstore (2)+ ii <= 0
        continue
    elseif matrix(locstore(1), locstore(2)+ii) == 0
        matrix(locstore(1), locstore(2) + ii) = prob;
    end
end

disp(matrix)