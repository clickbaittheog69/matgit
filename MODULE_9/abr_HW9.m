clc; clear;

message = input('Enter message to decrypt: ', 's');
key = input('Enter secret key: ','s');
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

for ii = 1:length(message)
    newii = mod(ii-1-ballschecker, length(key)) + 1;
    if message(ii) == ' ' || isstrprop(message(ii),'punct')
        ballschecker = ballschecker + 1;
    elseif isstrprop(message(ii), 'upper')
        message(ii) = upper(message(ii) - upper((key(newii)) - 97));
        if message(ii) <65
            message(ii) = message(ii) + 26;
        end

    else
        message(ii) = message(ii) - key(newii) + 97;
        if message(ii) < 97
            message(ii) = message(ii) + 26;
        end
    end
end

fprintf('Decrypted msg: %s', message)