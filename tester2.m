clc; clear;

word = 'maharaja';
word( find(word == 'a') ) = [];
fprintf('%d', length(word));