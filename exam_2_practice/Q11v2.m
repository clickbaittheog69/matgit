clc; clear;
% s = input('Enter message to encrypt: ', 's');
s = 'The \Incredibles';
swapper = '';
swapper2 = '';
s2 = '';
ballschecker = 0;
ballschecker2 = 1;
for ii = 1:length(s)
%
    if isstrprop(s(ii), 'alpha')
        swapper(ii) = s(ii);
        ballschecker = ballschecker +1;
    end
%



    if ballschecker == 2
        for kk = 1:ballschecker2-1
            swapper(1) = '';
        end

        %
        j = 1;
        k = length(swapper);
        while j<=k
            if swapper(j) == 0
                j = j+1;
            end
            if swapper(k) == 0
                k = k-1;
            end
            if isstrprop(swapper(j),'alpha') && isstrprop(swapper(k),'alpha')
                swapper2(j) = swapper(k);
                swapper2(k) = swapper(j);
                j = j+1;
                k = k-1;
            end
          
        end
%


        for jj = 1:length(swapper2)
            s2(ballschecker2) = swapper2(jj);
            ballschecker2 = ballschecker2 + 1;
        end


        swapper = '';
        ballschecker = 0;
        ballschecker2 = ii+1;
        swapper2 = '';
    end
end
fprintf('%s', s2)
