clc; clear;
phrase = input('Enter your favorite phrase: ' ,'s');
vowels = 0;
for ii = 1:length(phrase)
    if phrase(ii) == 'a' || phrase(ii) == 'e' || phrase(ii) == 'i' || phrase(ii) == 'o' || phrase(ii) == 'u'
        vowels = vowels + 1;
    end
end
disp(vowels);
