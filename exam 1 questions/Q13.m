clc; clear;
width = input('Enter width: ');
height = input('Enter height: ');

for ii = 1:height
    fprintf('*');
    if ii == 1 || ii == height
        for jj = 1:width-1
            fprintf('*');
        end
    else
        for kk = 1:width-2
            fprintf(' ');
        end
        fprintf('*')
    end
    fprintf('\n')
end

            