clc; clear;

% filename = input('Enter filename: ', 's');
boardpng = imread('Screenshot_Foxtrot.png');
imshow(boardpng);
board = zeros(4,4);
topleft = zeros(1,2);

[h,w,c] = size(boardpng);
%ydiff = 42 from top left
%xdiff = 57 from top left
%xjump = 122 from first square
%yjump = 122 from first square


for ii = h:-1:1 %checks from top left going right and down to see where the actual window for the game is
    for jj = 1:w
        if boardpng(ii,jj, 1) == 250 && boardpng(ii,jj,2) == 248 && boardpng(ii,jj,3) == 239
            %this specific color shows up only on the game window
            topleft(1) = ii;
            topleft(2) = jj;
            break
        end
    end
end


topleft(1) = topleft(1) + 42;
%value somewhat randomly chosen from the very top left of the game window to land near inside corner of
%tile window
topleft(2) = topleft(2) + 57;
%value somewhat randomly chosen from the very top left of the game window to land near inside corner of
%tile window
ogx = topleft(2);
for column = 1:4 %this huge chunk of code inputs values into the matrix.
    for row = 1:4
        %i tried setting the color as a matrix but it wasn't working so
        %instead of sitting for an hour to figure it out i just bit the
        %bullet and did it the stupid tedious way. it works the same
        %regardless
        if boardpng(topleft(1), topleft(2), 1) == 205 && boardpng(topleft(1), topleft(2), 2) == 193 && boardpng(topleft(1), topleft(2), 3) == 180
            board(column,row) = 0;
        elseif boardpng(topleft(1), topleft(2), 1) == 238 && boardpng(topleft(1), topleft(2), 2) == 228 && boardpng(topleft(1), topleft(2), 3) == 218
            board(column,row) = 2;
        elseif boardpng(topleft(1), topleft(2), 1) == 237 && boardpng(topleft(1), topleft(2), 2) == 224 && boardpng(topleft(1), topleft(2), 3) == 200
            board(column,row) = 4;
        elseif boardpng(topleft(1), topleft(2), 1) == 242 && boardpng(topleft(1), topleft(2), 2) == 177 && boardpng(topleft(1), topleft(2), 3) == 121
            board(column,row) = 8;
        elseif boardpng(topleft(1), topleft(2), 1) == 245 && boardpng(topleft(1), topleft(2), 2) == 149 && boardpng(topleft(1), topleft(2), 3) == 99
            board(column,row) = 16;
        elseif boardpng(topleft(1), topleft(2), 1) == 246 && boardpng(topleft(1), topleft(2), 2) == 124 && boardpng(topleft(1), topleft(2), 3) == 95
            board(column,row) = 32;
        elseif boardpng(topleft(1), topleft(2), 1) == 246 && boardpng(topleft(1), topleft(2), 2) == 94 && boardpng(topleft(1), topleft(2), 3) == 59
            board(column,row) = 64;
        elseif boardpng(topleft(1), topleft(2), 1) == 237 && boardpng(topleft(1), topleft(2), 2) == 207 && boardpng(topleft(1), topleft(2), 3) == 114
            board(column,row) = 128;
        elseif boardpng(topleft(1), topleft(2), 1) == 237 && boardpng(topleft(1), topleft(2), 2) == 204 && boardpng(topleft(1), topleft(2), 3) == 97
            board(column,row) = 256;
        elseif boardpng(topleft(1), topleft(2), 1) == 237 && boardpng(topleft(1), topleft(2), 2) == 200 && boardpng(topleft(1), topleft(2), 3) == 80
            board(column,row) = 512;
        elseif boardpng(topleft(1), topleft(2), 1) == 237 && boardpng(topleft(1), topleft(2), 2) == 197 && boardpng(topleft(1), topleft(2), 3) == 63
            board(column,row) = 1024;
        elseif boardpng(topleft(1), topleft(2), 1) == 237 && boardpng(topleft(1), topleft(2), 2) == 194 && boardpng(topleft(1), topleft(2), 3) == 46
            board(column,row) = 2048;
        end
        topleft(2) = topleft(2) + 122; %moves the pixel we're checking 122 to the right, stays consistent so it doesnt go off the tile
    end
    topleft(1) = topleft(1) + 122; %after we check thru 4 columns, we go down a row
    topleft(2) = ogx; %resets to original x value for the very leftmost tile
end

disp(board);
