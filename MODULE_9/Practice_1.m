clc; clear;
message = input('Enter the message: ', 's');
key = input('Enter the key: ', 's');
ballschecker = 0;
for ii = 1:length(message)
    y = mod(ii-1-ballschecker, length(key))+1;
    if isstrprop(message(ii), 'upper')
        message(ii) = upper(key(y));
    elseif message(ii) == ' '
        ballschecker = ballschecker +1;
    elseif isstrprop(message(ii), 'punct')
        message(ii) = message(ii);
        ballschecker = ballschecker + 1;
    else 
        message(ii) = key(y);
    end
end
fprintf('The new string is %s', message)