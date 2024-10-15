clc; clear;
 dice = input('Enter your 6 dice: ');
 sdice = sort(dice);
%sdice = sort([1 2 3 4 5 1]);

l = 0;
%chance calc
fprintf('Chance:                %g points\n', sum(sdice)); %19
%

%3 pairs calc
for ii = 1:6 %checks for pairs
    check =  find(sdice(1:6)==ii);
    if length(check) == 2
        l = length(check) + l;
    end
end
if l == 6 %if there are 3 pairs print this
    fprintf('Three pairs:           %g points\n', 35); %13
else
    fprintf('Three pairs:           %g points\n', 0); %13
end

%small straight calc
ssc = 1;
if min(sdice) > 3
    fprintf('Small Straight (4):    %g points\n', 0); %6
else
    for ii = min(sdice):min(sdice)+3
        ssc = length(find(sdice == ii))*ssc; %if mindice+ii doesn't exist it will be zero
    end
    if ssc == 0
        ssc = 1;
        for jj = max(sdice):-1:max(sdice)-3
            ssc = length(find(sdice == jj))*ssc; %if mindice-ii doesn't exist it will be zero
        end
    end
    if ssc == 0
        fprintf('Small Straight (4):    %g points\n', 0); %6
    else
        fprintf('Small Straight (4):    %g points\n', 40) %6
    end

end

%large straight calc
lsc = 1;
if min(sdice) > 2
    fprintf('Large Straight (5):    %g points\n', 0); %6
else
    for ii = min(sdice):min(sdice)+4
        lsc = length(find(sdice == ii))*lsc;
    end
    if lsc == 0
        fprintf('Large Straight (5):    %g points\n', 0); %6
    else
        fprintf('Large Straight (5):    %g points\n', 50) %6
    end
end

%maxiyatzy WORKS
if max(sdice) == min(sdice)
    fprintf('Maxiyatzy:             %g points', 100);
else
    fprintf('Maxiyatzy:             %g points', 0);
end