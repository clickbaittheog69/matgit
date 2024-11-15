clc; clear;
word = input('Enter a word: ','s');
matches = 0;
for ii = 1:1:length ( word )
    if word(ii) == word(length(word)+1 - ii)
        matches = matches +1;
    end
end
if matches == length(word)
    fprintf('% s is a palindrome!', word)
else
    fprintf('% s is NOT a palindrome ...', word)
end