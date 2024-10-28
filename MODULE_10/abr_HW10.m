clc; clear;
imgname = input('Enter image name: ', 's');
% img = imread('Alpha_Puzzle.png');
img = imread(imgname);
crtcimg = uint8(zeros(size(img)));
imgh = height(img);
imgw = width(img);
imgname = replace(imgname, pattern('Puzzle'), "Fixed");

img(:,:,1)= img(:,:,1) * 3;
img(:,:,2)= 0;
img(:,:,3)= img(:,:,3) * 3;

for y = 1:imgh
    for x = 1:imgw
        if mod(y, 2) == 0 %if even
            newrow = y/2;
            if x <= imgw/2
                newcol = (imgw/2) +(1-x);
                crtcimg(newrow, newcol, :) = img(y, x, :);
            else
                newcol = 3*imgw/2+(1-x);
                crtcimg(newrow, newcol, :)= img(y, x, :);
            end
        elseif mod(y,2) == 1 %if odd
            newrow = (y+1)/2+imgh/2;
            if x <= imgw/2
                newcol = (imgw/2) +(1-x);
                crtcimg(newrow, newcol, :)= img(y, x, :);
            else
                newcol = 3*imgw/2+(1-x);
                crtcimg(newrow, newcol, :)= img(y,x,:);
            end
        end
    end
end
crtcimg2 = crtcimg;
ballschecker = imgh;
xstart = 0;
xend = imgw+1;
for y = 1:imgh/2
    xstart = xstart+1;
    xend = xend-1;
    crtcimg(y, xstart:xend, :) = crtcimg2(ballschecker, xstart:xend, :);
    ballschecker = ballschecker - 1;
end
ballschecker = 1;
xstart = 0;
xend = imgw+1;
for y = imgh:-1:(imgh/2)+1
    xstart = xstart+1;
    xend = xend-1;
    crtcimg(y, xstart:xend, :) = crtcimg2(ballschecker, xstart:xend, :);
    ballschecker = ballschecker + 1;
end
imwrite(crtcimg, imgname)
fprintf('Corrected image saved to %s', imgname);
imshow(crtcimg)