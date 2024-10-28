clc; clear;
% Module 10 - Activity B: Draw circle
% Initial input
% circ_cols = struct2cell(load('M10_colors'));
% circ_cols = circ_cols{1};
% circ_color = circ_cols{randi(length(circ_cols))};
% circ_color = circ_cols{2};
% fprintf('Circle color: '); fprintf('%d ', circ_color)

% create original square and set background
c = [255, 218, 185];
square = uint8(zeros(601, 601, 3));
square(:, :, 1) = 255;
square(:, :, 2) = 218;
square(:, :, 3) = 185;


% change circle pixels - center point at (301, 301)
for x = 1:601
    for y = 1:601
        if (x-301)^2+(y-301)^2 <= 250^2
            square(y, x, 1) = circ_color(1);
            square(y,x,2) = circ_color(2);
            square(y,x,3) = circ_color(3);
        end
    end
end
            % show image
imshow(square);
