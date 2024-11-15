clc; clear;
nut = [7 6 1 2 5 3];
nut = sort(nut);
for ii = 1:nut(length(nut))
    if ii ~= nut(ii)
        fprintf('%d', ii)
        break
    end
end