clc; clear;
pix = uint8(zeros(501, 1001, 3));
[h,w,~] = size(pix);
for ii = 1:h
    pix(ii, ii+1:w-1,:) =255;
    w = w-1;
end
imshow(pix)