clc; clear;
row = input('Enter a row position: ');
col = input('Enter a col position: ');

pix = uint8(zeros(501, 1001, 3));
pix(:,:, :) = 255;
[h,w,c] = size(pix);

dr = row-501;
dc = col-251;
mag = sqrt(dr*dr + dc*dc);
ur = dr/mag;
uc = dc/mag;

for ii = 0:mag
    rr = round(251+ur*ii);
    cc = round(501+uc*ii);
    pix(rr,cc, 1) = 0;
    pix(rr,cc,3) = 0;
end