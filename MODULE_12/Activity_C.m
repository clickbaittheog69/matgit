% Module 10 - Activity C: Flip an image
clc; clear;
filename = 'Batman.png';
pix = imread(filename); 
[h,w,c] = size(pix);
blank = uint8(zeros(w,h,3));  %swapped h and w

for ii = 1:1:h
    for jj = 1:1:w
        newrow = jj; %made it dependent on jj
        newcol = (h+1)-ii; %made it dependent on ii
        blank(newrow, newcol, :) = pix(ii, jj, :); %swapped blank and pix
    end
end

imshow(blank)