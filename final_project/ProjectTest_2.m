%Project 2048 Test File
clc; clear;

filename = input('Enter the name of the image: ', 's');

board_game = AnalyzeScreenshot(filename);
disp(board_game);
fprintf('*********************************************\n');

[new_board1, a] = MakeMove(board_game, 'left');
fprintf('On shifting left, the new board is: \n');
disp(new_board1);
fprintf('The score is %g! \n', a);
fprintf('*********************************************\n');

[new_board2, b] = MakeMove(board_game,'right');
fprintf('On shifting right, the new board is: \n');
disp(new_board2);
fprintf('The score is %g! \n', b);
fprintf('*********************************************\n');

[new_board3, c] = MakeMove(board_game,'up');
fprintf('On shifting up, the new board is: \n');
disp(new_board3);
fprintf('The score is %g! \n', c);
fprintf('*********************************************\n');

[new_board4, d] = MakeMove(board_game,'down');
fprintf('On shifting down, the new board is: \n');
disp(new_board4);
fprintf('The score is %g! \n', d);
fprintf('*********************************************\n');




