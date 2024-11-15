clc; clear;
% s = input('Enter message to encrypt: ', 's');
s = 'The Incredibles';
swapper = '';
ballschecker = 0;
whereami = 1;
ballschecker2 = 1;
for ii = 1:length(s)
    if isstrprop(s(ii),'alpha')
        swapper(ii) = s(ii);
        ballschecker = ballschecker +1;
    end
    if ballschecker == 2
        
        swapper = reverse(swapper);
        for jj = 1:length(swapper)
            if isstrprop(swapper(ballschecker2), 'alpha') %|| isstrprop(swapper(jj), 'punct')
            s(whereami) = swapper(ballschecker2);
            ballschecker2 = ballschecker2 + 1;
            end
        end
        whereami = ii+1;
        swapper = '';
        ballschecker = 0;
        ballschecker2 = 1;
    end
end

fprintf('%s', s)