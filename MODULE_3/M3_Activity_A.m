% M3 A: Right triangles
% Determine if you have a right triangle
clc; clear;
% random length for 3 sides
s1 = randi(20);
s2 = randi(20);
s3 = randi(20);

% set length for 3 sides
%s1 = 10;
%s2 = 9;
%s3 = 6;

% If desired, reset variables to test specific values

% display input variable
fprintf('Side 1: %g\nSide 2: %g\nSide 3: %g\n', s1, s2, s3)

% check for a right triangle report result
% be sure to include all necessary conditions
% you may not use an || in your condtion statement

a = acosd((s2^2+s3^2-s1^2)/(2*s2*s3));
b = acosd((s1^2+s3^2-s2^2)/(2*s1*s3));
c = acosd((s1^2+s2^2-s3^2)/(2*s2*s1));

if a == 90
    fprintf ('This triangle has a right angle!');
elseif b == 90
    fprintf ('This triangle has a right angle!');
elseif c == 90 
    fprintf ('This triangle has a right angle!');
else  fprintf ('This triangle doesn''t have a right angle...');
end