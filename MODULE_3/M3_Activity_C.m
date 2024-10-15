% M3 C: Currency converter
clc; clear;
% Display options and set variables
fprintf('Available Currencies: A)USD B)CAD C)YEN \n');
trans_amt = randi(1000) + round(rand,2);
trans_curr = char(randi([65 67]));
conv_curr = char(randi([65 67]));

% reset values for testing script
% trans_amt = 15.05;
 %trans_curr = char(65); % as a string
 %conv_curr = char(66); % as a string

% Display inputs
fprintf('Transaction amount: $%.2f\nTransaction currency: %s\nCurrency to convert to: %s\n', trans_amt, trans_curr, conv_curr)
% Set initial value of conv_amt variable
conv_amt = 0;

% Calculate converstion amount and display output - use the variable conv_amt

%If currency = A
if trans_curr == char(65) 
    %A to A
    if conv_curr == char(65)
        conv_amt = trans_curr;
        fprintf('Conversion not needed...');
        %A to B
    elseif conv_curr == char (66)
        conv_amt = trans_amt*1.24;
        fprintf('Converted Value: %.02f CAD', conv_amt);
        %A to C
    elseif conv_curr == char (67)
        conv_amt = trans_amt*108.59;
        fprintf('Converted Value: %.02f YEN', conv_amt);
    end

    %If currency = B
elseif trans_curr == char(66)
    %B to A
    if conv_curr == char(65)
        conv_amt = trans_amt*(1/1.24);
        fprintf('Converted Value: %.02f USD', conv_amt);
        %B to B
    elseif conv_curr == char (66)
        conv_amt = trans_amt;
        fprintf('Conversion not needed...');
        %B to C
    elseif conv_curr == char (67)
        conv_amt = trans_amt*(1/1.24)*108.59;
        fprintf('Converted Value: %.02f YEN', conv_amt);
    end

%If currency = C
elseif trans_curr == char(67) 
    %C to A
    if conv_curr == char(65)
        conv_amt = trans_amt*(1/108.59);
        fprintf('Converted Value: %.02f USD', conv_amt);
        %C to B
    elseif conv_curr == char (66)
        conv_amt = trans_amt*(1/108.59)*1.24;
        fprintf('Converted Value: %.02f CAD', conv_amt);
        %C to C
    elseif conv_curr == char (67)
        conv_amt = trans_amt;
        fprintf('Conversion not needed...');
    end
end
