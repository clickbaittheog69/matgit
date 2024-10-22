clc; clear;
message = input('Enter message to decrypt: ', 's');
key = input('Enter secret key: ','s');
newkey = message;
ballschecker = 0;
for ii = 1:length(message)
    newii = mod(ii-1-ballschecker, length(key)) + 1;
    if message(ii) == ' ' || isstrprop(message(ii),'punct')
        ballschecker = ballschecker + 1;
        newkey(ii) = message(ii);
    elseif isstrprop(message(ii), 'upper')
        message(ii) = upper(message(ii) - upper((key(newii)) - 97));
         newkey(ii) = upper(key(newii));
        if message(ii) <65
            message(ii) = message(ii) + 26;
        end
    else
        message(ii) = message(ii) - key(newii) + 97;
        newkey(ii) = key(newii);
        if message(ii) < 97
            message(ii) = message(ii) + 26;
        end
    end
end
fprintf('Updated key: %s\n', newkey)
fprintf('Decrypted msg: %s', message)