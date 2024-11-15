clc; clear;
filename = 'Batman.png';
pix = imread(filename);





pix(:, :, 2) = pix(:, :, 1);
pix(:, :, 3) = pix(:, :, 2);
pix(:, :, 1) = pix(:, :, 3);
imshow(pix)