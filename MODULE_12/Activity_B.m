%M12 Activity A
clc; clear;
phrases = {
    'The train leaves every morning';
    'We all felt like we ate too much';
    'There is no place like home';
    'Trust but verify';
    'Get out of my swamp';
    'MatLab is my favorite course this semester'
    };
phrase = phrases{randi(length(phrases))};
% phrase = 'MatLab is my favorite course this semester';

% phrase = phrases{4}; % test specific phrase

fprintf('Enter the phrase: %s \n', phrase); 

% Script for debugging begins after this line
phrase = [phrase ' '];

spaces = find(phrase == ' '); 
longest_word = phrase(1:spaces(1)-1); 

for ii = 1:1:length(spaces)-1
    word = phrase(spaces(ii)+1:spaces(ii+1)-1); 
    if length(word) > length(longest_word) 
        longest_word = word;
    end
end

disp(longest_word); 