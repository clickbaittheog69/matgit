clc; clear;
el = input('Enter the encrypted letter: ', 's');
dl = input('Enter the decryption letter: ','s');

el = el + (dl - 97);

if el > 122 
    el = el-26;
end

fprintf('The decrypted letter is: %s', el)
