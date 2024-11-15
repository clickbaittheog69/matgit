clc; clear;
N = input('Enter the number of squares: ');
pix = uint8(zeros(100,N*100,3));
% pix(:,1:100,1) = 255;
% pix(26:75,26:75,2) = 255;
% pix(26:75,26:75,3) = 255;
colors = [1 2 3];
c = 1;
% for ii = 2:N
%     pix(:,(ii-1)*100+1:(ii*100),colors(c)) = 255;
%     pix(26:75,((ii-1)*100)+26:((ii-1)*100)+76, :) = 255;
%     c = c+1;
%     if c == 4
%         c = 1;
%     end
% end
% imshow(pix);

for ii = 0:N
    pix(:, (ii*100)+1:ii+100, colors(c)) = 255;
    pix(26:75,ii*100+26:ii*100+75,:) = 255;
    c = c+1;
    if c == 4
        c = 1;
    end
end
imshow(pix);
