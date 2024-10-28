% Module 10 - Activity A: Flip an image
% Initial input
filename = 'Batman.png';

% import image and save to a variable
pic = imread(filename);

% determine the size of the original image
[h, w, c] = size(pic);

% preset size of new flipped image
flipped = uint8(zeros(h, w));

% complete 180 degree rotation
flipped = pic(h:-1:1, w:-1:1, :);

% show flipped image
imshow(flipped);
