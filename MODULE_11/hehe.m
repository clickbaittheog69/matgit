clc; clear;
mat = uint8(zeros(5,5,3));

mat(:,:,1) = 255;

x = mat(5,5,1);

x = x * 2;

disp(x);