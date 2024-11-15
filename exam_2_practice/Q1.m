clc; clear;
x = [16 12 14 18 13 20];
myVector = zeros (2 ,1);
for ii = 1: length ( x )
    if x ( ii ) > 15
        myVector ( ii ) = x ( ii );
    end
end
disp ( myVector )
