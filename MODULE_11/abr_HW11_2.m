clc; clear;
word = input('Enter a word: ','s');
% vowelloc = string;
for ii = 1:length(word)
    if word(ii) == 'a' ||word(ii) == 'e' ||word(ii) == 'i'||word(ii) == 'o'||word(ii) == 'u'
        vowelloc(ii) = word(ii);
    else
        vowelloc(ii) = ' ';
    end
end
reversevowel = vowelloc;
ballschecker = 1;
ballschecker2 = length(vowelloc);
while ballschecker < ballschecker2
    if isstrprop(vowelloc(ballschecker),'wspace') 
        ballschecker = ballschecker + 1;
    end
    if isstrprop(vowelloc(ballschecker2), 'wspace') 
        ballschecker2 = ballschecker2 - 1;
    end
    if isstrprop(vowelloc(ballschecker), 'alpha') && isstrprop(vowelloc(ballschecker2), 'alpha') 
        reversevowel(ballschecker) = vowelloc(ballschecker2);
        reversevowel(ballschecker2) = vowelloc(ballschecker);
        ballschecker = ballschecker +1;
        ballschecker2 = ballschecker2 - 1;
    end
end



for ii = 1:length(word)
    if word(ii) == 'a' ||word(ii) == 'e' ||word(ii) == 'i'||word(ii) == 'o'||word(ii) == 'u'
        word(ii) = reversevowel(ii);
    end
end
fprintf("The new word is: %s", word);