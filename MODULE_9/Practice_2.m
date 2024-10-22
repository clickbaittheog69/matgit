% clc; clear;
% el = input('Enter the encrypted letter: ', 's');
% dl = input('Enter the decryption letter: ','s');
%
% el = el + (dl - 97);
%
% if el > 122
%     el = el-26;
% end
%
% fprintf('The decrypted letter is: %s', el)

function decryptedMessage = Practice_2()
clc; clear;

% Input message and key
message = input('Enter message to decrypt: ', 's');
key = input('Enter secret key: ', 's');

% Validate inputs
if ~all(isstrprop(message, 'alpha') | isstrprop(message, 'punct') | isspace(message))
    error('Message can only contain letters, punctuation, and spaces.');
end
if ~all(isstrprop(key, 'alpha'))
    error('Key can only contain letters.');
end

newkey = '';
decryptedMessage = '';
keyLength = length(key);
keyIndex = 1; % Pointer for the key

for ii = 1:length(message)
    currentChar = message(ii);

    % Preserve spaces and punctuation
    if isspace(currentChar) || isstrprop(currentChar, 'punct')
        decryptedMessage(ii) = currentChar;
        newkey(ii) = currentChar;
        continue;
    end

    % Determine current key character
    keyChar = upper(key(mod(keyIndex - 1, keyLength) + 1));

    % Decrypt character
    if isstrprop(currentChar, 'upper')
        decryptedChar = mod(double(currentChar) - double(keyChar) + 26, 26) + double('A');
        newkey(ii) = keyChar;
    else
        decryptedChar = mod(double(lower(currentChar)) - double(lower(keyChar)) + 26, 26) + double('a');
        newkey(ii) = lower(keyChar);
    end

    decryptedMessage(ii) = char(decryptedChar);

    % Move to next key character
    keyIndex = keyIndex + 1;
end

fprintf('The new key is: %s\n', newkey);
fprintf('Decrypted message: %s\n', decryptedMessage);
end