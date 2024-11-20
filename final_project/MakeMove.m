function [new_board,score] = MakeMove(board, direction)
score = 0;

%lines 22 - 104 is for prealigning the tiles
%lines 110 - 171 is for calculating the game state
%lines 177 - end is for re-aligning the tiles to final game state


% board = [4 0 0 0;16 4 2 2;32 16 4 4;64 32 8 4]; %test board
% fprintf('Original\n') %can comment as i included this for test purposes
% disp(board)

% direction = input('was yo move?: ', 's');
x = 1;
y = 1;
%x and y is what we use to compare
%when i move to the left, x is the left tile and jj is the right tile. I
%compare the two and see if there's a zero. If there is a zero where x is,
%and a nonzero where jj is, I move jj to x, and increment x by one. 

%this section of code pre-aligns all of the tiles so it's easier to
%calculate the final game state
if strcmp(direction, 'left') 
    for ii = 1:4
        for jj = 2:4
            if board(y,x) ~=0 %for cases where the leftmost tile is not a 0, move the compare tile one to the right
                x = x+1;
            end
            if board(y,x) == 0 && board(ii,jj) ~= 0 %continually indexes and checks for spaces in between compare tile and index
                board(y,x) = board(ii,jj);
                board(ii,jj) = 0;
                x = x+1;
            end
        end
        y = y+1; %resets the compare tile back to leftmost 
        x = 1;
    end
end
if strcmp(direction, 'right') 
    x = 4;
    y = 1;
    %premove so every tile is aligned 
    for ii = 1:4
        
        for jj = 3:-1:1
            if board(y,x) ~=0 %for cases where the rightmost tile is not a 0, move the compare tile one to the right
                x = x-1;
            end
            
            if board(y,x) == 0 && board(ii,jj) ~= 0 %continually indexes and checks for spaces in between compare tile and index
                board(y,x) = board(ii,jj);
                board(ii,jj) = 0;
                x = x-1;
            end
            
        end
        y = y+1; %resets the compare tile
        x = 4;
    end
end
if strcmp(direction, 'up') 
    x = 1;
    y = 1;
    %premove so every tile is aligned 
    for ii = 1:4
        
        for jj = 2:4
            if board(y,x) ~=0 %for cases where the upmost tile is not a 0, move the compare tile one to the top
                y = y+1;
            end
            
            if board(y,x) == 0 && board(jj,ii) ~= 0 %continually indexes and checks for spaces in between compare tile and index
                board(y,x) = board(jj,ii);
                board(jj,ii) = 0;
                y = y+1;
            end
            
        end
        x = x+1; %resets the compare tile
        y = 1;
    end
end
if strcmp(direction, 'down') 
    x = 1;
    y = 4;
    for ii = 1:4
        
        for jj = 3:-1:1
            if board(y,x) ~=0 %for cases where the bottommost tile is not a 0, move the compare tile one to the bottom
                y = y-1;
            end
            
            if board(y,x) == 0 && board(jj,ii) ~= 0 %continually indexes and checks for spaces in between compare tile and index
                board(y,x) = board(jj,ii);
                board(jj,ii) = 0;
                y = y+-1;
            end
            
        end
        x = x+1; %resets the compare tile
        y = 4;
    end
end
% fprintf('Aligned\n')
% disp(board);
%prints the aligned board, for testing purposes

%this does the actual calculation. I used the same x and y variables, but
%instead of moving, (using left as an example) I compare x and jj, and if x
%and jj are the same, I set x to be x*2 and jj to be 0. 
if strcmp(direction, 'left')
    x = 1;
    y = 1;
    for ii = 1:4
        for jj = 2:4
            if board(y, x) == board(ii, jj) && board(y, x) ~= 0 && board(ii,jj) ~= 0 %If two squares are equal and are not zero
                board(y,x) = board(y,x)*2;
                score = score + board(y,x);
                board(ii,jj) = 0;
            end
            x = x+1;
        end
        x = 1;
        y = y+1;
    end
end
if strcmp(direction, 'right')
    x = 4;
    y = 1;
    for ii = 1:4
        for jj = 3:-1:1
            if board(y, x) == board(ii, jj) && board(y, x) ~= 0 && board(ii,jj) ~= 0
                board(y,x) = board(y,x)*2;
                score = score + board(y,x);
                board(ii,jj) = 0;
            end
            x = x-1;
        end
        x = 4;
        y = y+1;
    end
end
if strcmp(direction, 'up')
    x = 1;
    y = 1;
    for ii = 1:4
        for jj = 2:4
            if board(y, x) == board(jj, ii) && board(y, x) ~= 0 && board(jj,ii) ~= 0
                board(y,x) = board(y,x)*2;
                score = score + board(y,x);
                board(jj,ii) = 0;
            end
            y = y+1;
        end
        y = 1;
        x = x+1;
    end
end
if strcmp(direction, 'down')
    x = 1;
    y = 4;
    for ii = 1:4
        for jj = 3:-1:1
            if board(y, x) == board(jj, ii) && board(y, x) ~= 0 && board(jj,ii) ~= 0
                board(y,x) = board(y,x)*2;
                score = score + board(y,x);
                board(jj,ii) = 0;
            end
            y = y-1;
        end
        y = 4;
        x = x+1;
    end
end
% % fprintf('New Unaligned Board\n')
% disp(board);
%end of move board. added disp(board) for test purposes

%i noticed that sometimes there is a space between tiles which is not how
%the game works. I copied the beginning part of the code over again to
%realign the tiles. im sure there's a way to do this within the if and else
%loops but i just ctrl c ctrl v'd that baby.
if strcmp(direction, 'left') 
    x = 1;
    y = 1;
    %re-move so every tile is aligned 
    for ii = 1:4
        for jj = 2:4
            if board(y,x) ~=0 %for cases where the leftmost tile is not a 0, move the compare tile one to the right
                x = x+1;
            end
            if board(y,x) == 0 && board(ii,jj) ~= 0 %continually indexes and checks for spaces in between compare tile and index
                board(y,x) = board(ii,jj);
                board(ii,jj) = 0;
                x = x+1;
            end
        end
        y = y+1; %resets the compare tile
        x = 1;
    end
end
if strcmp(direction, 'right') 
    x = 4;
    y = 1;
    %re-move so every tile is aligned 
    for ii = 1:4
        
        for jj = 3:-1:1
            if board(y,x) ~=0 %for cases where the rightmost tile is not a 0, move the compare tile one to the right
                x = x-1;
            end
            
            if board(y,x) == 0 && board(ii,jj) ~= 0 %continually indexes and checks for spaces in between compare tile and index
                board(y,x) = board(ii,jj);
                board(ii,jj) = 0;
                x = x-1;
            end
            
        end
        y = y+1; %resets the compare tile
        x = 4;
    end
end
if strcmp(direction, 'up') 
    x = 1;
    y = 1;
    %re-move so every tile is aligned 
    for ii = 1:4
        
        for jj = 2:4
            if board(y,x) ~=0 %for cases where the upmost tile is not a 0, move the compare tile one to the top
                y = y+1;
            end
            
            if board(y,x) == 0 && board(jj,ii) ~= 0 %continually indexes and checks for spaces in between compare tile and index
                board(y,x) = board(jj,ii);
                board(jj,ii) = 0;
                y = y+1;
            end
            
        end
        x = x+1; %resets the compare tile
        y = 1;
    end
end

if strcmp(direction, 'down') 
    x = 1;
    y = 4;
    %re-move so every tile is aligned 
    for ii = 1:4
        
        for jj = 3:-1:1
            if board(y,x) ~=0 %for cases where the bottommost tile is not a 0, move the compare tile one to the bottom
                y = y-1;
            end
            
            if board(y,x) == 0 && board(jj,ii) ~= 0 %continually indexes and checks for spaces in between compare tile and index
                board(y,x) = board(jj,ii);
                board(jj,ii) = 0;
                y = y+-1;
            end
            
        end
        x = x+1; %resets the compare tile
        y = 4;
    end
end
% fprintf('Final Game state\n')
% disp(board);

%i could have use nested if and elseif loops to save lines but for ease of
%reading and debugging i kept all the lines separate
new_board = board;
end