% Lowest multiple with 9s and 0s
clc; clear;
N = input('Enter a positive whole number N: ');
cnt = 1;
while true
    M = N*cnt;
    Mnew = M;
    while Mnew >= 1 
        remainder = mod(Mnew,10);
        if remainder == 9 || remainder == 0 %~= --> ==
            Mnew = floor(Mnew/10); %* --> /
        else
            break;
        end
    end
    if Mnew < 1
        break;
    end
    cnt = cnt +1; %cnt+1
end
fprintf('Lowest multiple with only 9s and 0s: %d\n',M);
