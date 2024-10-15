clc; clear;
a_year = input("Enter person's A birth year: ");
a_month = input("Enter person's A birth month: ");
b_year = input("Enter person's B birth year: ");
b_month = input("Enter person's B birth month: ");

if a_year < b_year
    fprintf('A');
    elseif b_year < a_year
        fprintf('B');
    else
        if a_month < b_month
            fprintf('A');
            elseif b_month<a_month
                fprintf('B');
            else
                fprintf('Both are the same age');
        end

end