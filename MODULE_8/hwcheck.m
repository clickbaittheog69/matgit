clc; clear;
%dice = sort(input('Enter your 6 dice: '));
%dice = sort(randi(6, 1, 6));
dice = sort([1 2 3 5 6 6]);

l = 0;
pairs = 0;
ballschecker = 0;
%chance calc
fprintf('Chance:                %g points\n', sum(dice)); %19
%

%3 pairs calc
% pcheck = dice;
% for ii = 1:2:6
%     for jj = ii+1:2:6
%         if pcheck(ii) == pcheck(jj) && pcheck(ii) ~= 0
%             pairs = pairs + 1;
%             pcheck(ii) = 0;
%             pcheck(jj) = 0;
%         end
%     end
% end
% if pairs == 3
%      fprintf('Three pairs:           %g points\n', 35); %13
% else
%     fprintf('Three pairs:           %g points\n', 0); %13
% end

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
scballs = dice;
if min(dice) > 3
    fprintf('Small Straight (4):    %g points\n', 0); %6
elseif min(dice) > 2
     fprintf('Large Straight (5):    %g points\n', 0); %6
end
for ii = 1:6
    straight = find(dice == ii);
    if length(straight) == 2
        scballs(straight(2)) = 0;
    elseif length(straight) == 3
        scballs(straight(2)) = 0;
        scballs(straight(3)) = 0;
    end
end
scballs(scballs == 0) = [];
%if length(scballs) == 5
 %   fprintf('Small Straight (4):    %g points\n', 40) %6
 %   fprintf('Large Straight (5):    %g points\n', 50) %6
%elseif 
% 
% for ii = 2:length(scballs)-1
%     % Checks if value above is correct
%     if str_ck(ii) + 1 == str_ck(ii + 1)
%         str = str + 1;
%     % Checks if value below is correct
%     elseif str_ck(ii) - 1 == str_ck(ii - 1) || str_ck(ii) == str_ck(ii - 1)
%         continue;
%     elseif str == 3 || str == 4
%         str = str + 1;
%         continue;
%     % Cancels out straight if not correct
%     else
%         str = 0;
%     end
% end

for ii = 2:length(scballs)
    if scballs(ii) - 1 == scballs(ii-1) 
        ballschecker = ballschecker + 1;
    end
end

if ballschecker >= 4 
    fprintf('Small Straight (4):    %g points\n', 40) %6
    fprintf('Large Straight (5):    %g points\n', 50) %6
elseif ballschecker == 3
    fprintf('Small Straight (4):    %g points\n', 40) %6
    fprintf('Large Straight (5):    %g points\n', 0) %6
else
    fprintf('Small Straight (4):    %g points\n', 0) %6
    fprintf('Large Straight (5):    %g points\n', 0) %6
end

% %large straight calc
% lsc = 1;
% if min(dice) > 2
%     fprintf('Large Straight (5):    %g points\n', 0); %6
% else
%     for ii = min(dice):min(dice)+4
%         lsc = length(dice == ii)*lsc;
%     end
%     if lsc == 0
%         fprintf('Large Straight (5):    %g points\n', 0); %6
%     else
%         fprintf('Large Straight (5):    %g points\n', 50) %6
%     end
% end

%maxiyatzy WORKS
if max(dice) == min(dice)
    fprintf('Maxiyatzy:             %g points', 100);
else
    fprintf('Maxiyatzy:             %g points', 0);
end