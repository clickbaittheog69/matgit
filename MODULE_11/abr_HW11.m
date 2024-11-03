clc; clear;
filename = input('Enter filename: ','s');
filename = replace(filename, pattern('.png'), "Outline.png");
fprintf('Outlined saved to %s', filename);
