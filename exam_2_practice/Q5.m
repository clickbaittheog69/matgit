clc; clear;
email = input('Enter an email address:', 's');

atloc = find(email == '@');
for ii = length(email):-1:atloc
    email(ii) = '';
end
disp(email);