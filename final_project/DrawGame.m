clc; clear;
board = [2 4 8 16;32 64 128 256;512 1028 2048 2;2 2 2 2];
filename1 = ('Screenshot_Charlie.png'); %includes numbers 2 thru 64
filename2 = ('Screenshot_Foxtrot.png'); %includes numbers 128 thru 512
filename3 = ('Screenshot_Golf.png'); %1028
filename4 = ('Screenshot_Hotel.png'); %2048

board1 = imread(filename1) ;
board2 = imread(filename2);
board3 = imread(filename3);
board4 = imread(filename4);
%creates images of each number so they look pretty and i dont have to do
%work
two = uint8(board1(500:606,321:427,:));
four = uint8(board1(621:727,321:427,:));
eight = uint8(board1(742:848,321:427,:));
sixteen = uint8(board1(621:727,200:306,:));
threetwo = uint8(board1(742:848,200:306,:));
sixfour = uint8(board1(742:848,79:185,:));
onetwoeight = uint8(board2(503:609,1053:1159,:));
twofivesix = uint8(board2(624:730,1053:1159,:));
fiveonetwo = uint8(board2(745:851,1053:1159,:));
onethou = uint8(board3(427:533,1058:1164,:));
holymoly = uint8(board4(500:606,558:664,:));
% 500x500 size for game window
pix = uint8(zeros(500,500,3));
pix(:,:, 1) = 205;
pix(:,:,2) = 193;
pix(:,:,3) = 180;
%14 pixel thick borders
%i could have done a for loop but this was easier than just doing the math,
%sue me
%this is for the horizontal lines
pix(:,1:14,1) = 187;
pix(:,1:14,2) = 173;
pix(:,1:14,3) = 160;

pix(:,122:135,1) = 187;
pix(:,122:135,2) = 173;
pix(:,122:135,3) = 160;

pix(:,242:255,1) = 187;
pix(:,242:255,2) = 173;
pix(:,242:255,3) = 160;

pix(:,362:375,1) = 187;
pix(:,362:375,2) = 173;
pix(:,362:375,3) = 160;

pix(:,485:end,1) = 187;
pix(:,485:end,2) = 173;
pix(:,485:end,3) = 160;

%for the vertical lines
pix(1:14,:,1) = 187;
pix(1:14,:,2) = 173;
pix(1:14,:,3) = 160;

pix(122:135,:,1) = 187;
pix(122:135,:,2) = 173;
pix(122:135,:,3) = 160;

pix(242:255,:,1) = 187;
pix(242:255,:,2) = 173;
pix(242:255,:,3) = 160;

pix(362:375,:,1) = 187;
pix(362:375,:,2) = 173;
pix(362:375,:,3) = 160;

pix(485:end,:,1) = 187;
pix(485:end,:,2) = 173;
pix(485:end,:,3) = 160;
% end of checkerboard pattern

imshow(pix)
x = 15;
y = 15; 
%i wrote this from the top left corners down basically it works fine
%there's weird borders but like... eh it works 
for ii = 1:4
    for jj = 1:4
        if board(ii,jj) == 2
            pix(y:y+106,x:x+106,:) = two(:,:,:);
        elseif board(ii,jj) == 4
            pix(y:y+106,x:x+106,:) = four(:,:,:);
        elseif board(ii,jj) == 8
            pix(y:y+106,x:x+106,:) = eight(:,:,:);
        elseif board(ii,jj) == 16
            pix(y:y+106,x:x+106,:) = sixteen(:,:,:);
        elseif board(ii,jj) == 32
            pix(y:y+106,x:x+106,:) = threetwo(:,:,:);
        elseif board(ii,jj) == 64
            pix(y:y+106,x:x+106,:) = sixfour(:,:,:);
        elseif board(ii,jj) == 128
            pix(y:y+106,x:x+106,:) = onetwoeight(:,:,:);
        elseif board(ii,jj) == 256
            pix(y:y+106,x:x+106,:) = twofivesix(:,:,:);
        elseif board(ii,jj) == 512
            pix(y:y+106,x:x+106,:) = fiveonetwo(:,:,:);
        elseif board(ii,jj) == 1028
            pix(y:y+106,x:x+106,:) = onethou(:,:,:);
        elseif board(ii,jj) == 2048
            pix(y:y+106,x:x+106,:) = holymoly(:,:,:);
        end
        x = x+121;
    end
    x = 15;
    y = y+121;
end
imshow(pix)
imwrite(pix,'2048.png')