clc; clear;
imgname = input('Enter image name: ', 's');
imgname = imread(imgname);
crtcimg = uint8(zeros(size(imgname)));
