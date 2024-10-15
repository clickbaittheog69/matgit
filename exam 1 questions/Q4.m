clc; clear;
fprintf ('Which of the following movies were produced by Pixar?\n')
fprintf ('1) Toy Story 2) Tangled\n')
fprintf ('3) Up 4) Incredibles\n')
choice1 = input ('Answer 1:');
choice2 = input ('Answer 2:');
choice3 = input ('Answer 3:');

if choice1 == 2 || choice2 == 2 || choice3 == 2
    fprintf('Wrong!');
elseif choice1 == choice2 || choice2 == choice3 || choice1 == choice3
    fprintf('Wrong!');
else

    fprintf('Correct!');
end