clc; clear;
% M10 Activity - Checkerboard
% create blank image
board = uint8(zeros(800,800,3));

% create variable to denote black or white
ballschecker = 1;

% change pixels to white as needed
for ii = 1:8
    if mod(ii, 2) == 1 %for odd numbered squares
        %set repeating pattern to do 100x100 squares of white
        
        for topleftdiag = 1:200:601
            board(ballschecker:ballschecker+99, topleftdiag:topleftdiag+99, :) = 255;
            
        end
ballschecker = ballschecker +100;
    else
        for topleftdiag = 101:200:701
            board(ballschecker:ballschecker+99, topleftdiag:topleftdiag+99, :) = 255;
        end
        ballschecker = ballschecker + 100;
    end
end

imshow(board)
