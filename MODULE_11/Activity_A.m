clc; clear;
flag = uint8(zeros(650,1000, 3));
ballschecker = 1;

for ii = 1:50:650
    if ballschecker == 1 
        flag(ii:ii+49, :, 1) = 255;
        ballschecker = ballschecker + 1;
    else
        flag(ii:ii+49, :,:) = 255;
        ballschecker = ballschecker - 1;
    end
end
flag(1:350, 1:400, :) = 0;
flag(1:350, 1:400, 3) = 255;
imshow(flag);
