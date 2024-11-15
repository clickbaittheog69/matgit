clc; clear;
%rgb, 1, 2, 3
pix = uint8(zeros(32,32, 3));
for ii = 1:32
    pix(ii,ii, 3) = 255;
    pix(ii, 33-ii, 3) = 255;
end
imshow(pix);