clc; clear;

% Module 9 - Activity A: Count words
% Initial input
%words = struct2cell(load('M9B_words'));
%words = words{1};
%word = words{randi(length(words))};

% Test specific word here if desired. Don't forget the single quotes!
word = 'supercalifragilisticexpialidocious';

% Display phrase
fprintf('Selected word: %s\n', word)

% Create new word and output



wascii = zeros(1,length(word));
for ii = 1:length(word)
    wascii(ii) = word(ii);
end
for ii = min(wascii):max(wascii)
    fnder = find(wascii == ii);
    if length(fnder) > 1
        for jj = 2:length(fnder)
            wascii(fnder(jj)) = 0;
        end
    end
end
n = 1;
for ii = 1:length(wascii)
    if wascii(ii) ~= 0
        new_word(n) = wascii(ii);
        n = n+1;
    end
end
new_word = char(new_word);
fprintf('Adjusted word: %s', new_word);
    