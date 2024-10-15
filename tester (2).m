clc; clear;
x = 1;
y = 1;
simuc = 1;
simux = zeros(1,100);

for ii = 1:20
    simux(simuc) = x;
    simuc = simuc+1;
    x = x+1;
    for jj = 1:100
        y = 2*y;
       
        for kk = 1:100
          %  isMatch = cellfun(@(x) any (ismember(y, double(simux))), simux);
     %   if isMatch == 1
            continue
   %     elseif isMatch == 0
            fprintf('%g\n', y)
        end
        end

    end
end

clc; clear;

a = [23 45 56 12 34];

fprintf( '%d%d', a(2),a(1,2));

