clc; clear;
R = zeros(1, 50);
den = 0;
for ii = 1:50
    R(ii) = input('Gimmie resistor value %g: ');
end
for jj = 1:50
    den = 1/R(jj) + den;
end
Rt = 1/den;
fprintf('Resistor Value = %g', Rt);