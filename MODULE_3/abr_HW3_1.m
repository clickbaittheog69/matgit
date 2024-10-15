clc; clear;

allowable_flav = {'A', 'B', 'C', 'D'};
allowable_tops = {'E', 'F', 'G', 'H', 'I'};



fprintf('Welcome to the Ice Cream Kiosk! Make your choices below:\n');
fprintf('Sizes: 1) Small 2) Regular 3) Large\n');
fprintf('Flavors: A) Vanilla B) Chocolate C) Strawberry D) Birthday Cake\n')
fprintf('Toppings: E) Sprinkles F) Hot Fudge G) Caramel H) Brownie Bits I) None\n')

size = input('Enter your size: ');
if size < 4
    flav = input('Enter base flavor: ', 's');
    flavallowflav = sum(strcmpi(flav, allowable_flav));

    if flavallowflav == 1
        top = input('Enter your topping: ','s');
        topallowtop = sum(strcmpi(top, allowable_tops));

        if topallowtop == 1
            if size == 1
                sizeprice = 3.99;
            elseif size == 2
                sizeprice = 4.99;
            else
                sizeprice = 5.99;
            end
            if top == 'I'
                fprintf('Final price with tax: $%.02f', sizeprice*1.06);
            else
                fprintf('Final price with tax: $%.02f', 1.06*(sizeprice+0.99));
            end

        else
            fprintf('Invalid topping! Please start another order...');
        end
    else
        fprintf('Invalid flavor! Please start another order...');
    end
else
    fprintf('Invalid size! Please start another order...');
end