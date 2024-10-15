clc; clear;
ogS = input('Enter any numeric value: ');
%stops code from running if you put in a 0
if ogS == 0
    fprintf('The square root of 0 is simply 0');
else
    %regular ol rest of the code
    xold = input('Enter an initial guess: ');
    i = 0; %counts iterations
    error = 1; % sets original error
    if ogS > 0
        S = ogS; %checks for absoluteness
    else
        S = abs(ogS);
    end
    while error > 1e-9 %actual bit of code
        xnew = 0.5*(xold+(abs(S)/xold));
        error = abs((xnew*xnew/S)-1);
        i = i+1; %counts iterations
        xold=xnew;
    end
    if ogS > 0 %print func if og number was positive
        fprintf('Algorithm completed in %g iterations\n', i);
        fprintf('The square root of %.0f is about %.05f', S, xnew);
    else %print func if og number was negative
        fprintf('Algorithm completed in %g iterations\n', i);
        fprintf('The square root of -%g is %gi', S, xnew);
    end
end