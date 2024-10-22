clc; clear;


% Test specific phrase here if desired. Don't forget the single quotes!
phrase = "There's no place like home";
phrase = char(phrase);
% Display phrase
fprintf('Phrase: %s\n', phrase)

% Flip words and output
ballschecker2 = 0;
phrasedouble = zeros(1,length(phrase));
for ii = 1:length(phrase)
    phrasedouble(ii) = phrase(ii);
end
locb = 1;
loce = 0;
flipfinal = zeros(1, length(phrase));
for ii = 1:length(flipfinal) %creates the spaces
    if phrasedouble(ii) == 32
        flipfinal(ii) = 32;
    end
end
phrasedouble(length(phrase) + 1) = 32;
while isempty(phrasedouble) == 0
    strue = 1;
    ballschecker2 = 0;
    while strue == 1
        ballschecker2 = ballschecker2+1;
        if isempty(phrasedouble(ballschecker2)) == 1
            strue = 0;
        elseif phrasedouble(ballschecker2) ~= 32
            phraseflipper(ballschecker2) = phrasedouble(ballschecker2);
        elseif phrasedouble(ballschecker2) == 32  
            strue = 0;
        end
    end
   
phraseflipper = char(phraseflipper);
    loce = loce + ballschecker2;
    phraseflipper = phraseflipper(end:-1:1); %flips the midway

    ballschecker = 0;
    for ii = locb:loce-1 %writes the midway flip to the final flip
        ballschecker = ballschecker + 1;
        flipfinal(ii) = phraseflipper(ballschecker);
    end
    


    %deletes the flip from the original string
    for ii = 1:ballschecker2
        phrasedouble(1) = [];
    end
    locb = loce+1 ;
    phraseflipper = [];
end
flipfinal = char(flipfinal);
fprintf('Adjusted phrase: %s', flipfinal)