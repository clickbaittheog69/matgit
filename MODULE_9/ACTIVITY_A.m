clc; clear;
phrase = 'Its not who I am underneath, but what I do that defines me!';

fprintf('Phrase: %s\n', phrase)


words = 1;
for ii = 1:length(phrase)
    if phrase(ii) == 32
        words = words + 1;
    end
end
fprintf('There are %d words!', words)
