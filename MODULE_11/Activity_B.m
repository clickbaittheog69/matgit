% Module 11 - Activity B: Count Pennies
% Initial input
clc; clear;
filename = ('Penny_Charlie.png');

% Test specific filename here if desired. Don't forget the single quotes!
% filename = files{3};

fprintf('Image to count: %s\n', filename);

% import image and save to a variable
pixel = imread(filename);
[h, w, ~] = size(pixel);
% Create binary image to store where penny pixels are found
bin = false(h, w);

for ii = 1:h
    for jj = 1:w
        if pixel(ii,jj,1) > pixel(ii, jj, 2) + 20 && pixel(ii,jj,1) > pixel(ii,jj,3) + 30
            bin(ii,jj) = 1;
        end
    end
end
ballschecker = sum(bin, 'all');
% Check binary image for accuracy
imshow(bin)

% Output final count
fprintf('Number of pennies: %d', round(ballschecker/ 1850));