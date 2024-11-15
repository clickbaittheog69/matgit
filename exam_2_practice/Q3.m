clc; clear;
myMatrix = cat(2, [1:1:100;101:1:200]);
swapmatrix = zeros(2,100);

for jj = 1:100
    swapmatrix(1,jj) = myMatrix(2, jj);
    swapmatrix(2,jj) = myMatrix(1,jj);
end
