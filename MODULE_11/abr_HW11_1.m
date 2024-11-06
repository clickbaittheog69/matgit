clc; clear;
filename = input('Enter filename: ','s');
% filename = ("Puck_1.png");
puck = imread(filename);
filename = replace(filename, pattern('.png'), "Outline.png");
fprintf('Outlined saved to %s', filename);

[h,w,~]=size(puck);
bin = false(h,w);

for ii = 1:h
    for jj = 1:w
        if puck(ii,jj, 3) > puck(ii,jj, 1) + 40
            bin(ii,jj) = 1;
        end
    end
end
for ii = 2:h-1
    for jj = 2:w-1
        p1 = bin(ii-1, jj-1); %topleft
        p2 = bin(ii-1,jj); %top
        p3 = bin(ii-1,jj+1); %topright
        p4 = bin(ii, jj+1); %right
        p5 = bin(ii+1, jj+1); %botright
        p6 = bin(ii+1, jj);%bot
        p7 = bin(ii+1, jj-1);%botleft
        p8 = bin(ii, jj-1);%left
        if (p1 == 1 || p2 == 1 || p3 == 1 || p4 == 1 || p5 == 1 || p6 == 1 ||p7 == 1 || p8 == 1) && bin(ii,jj) == 0 
            puck(ii,jj,:) = 255;%1
        end
    end
end
imshowpair(puck,bin,'montage');