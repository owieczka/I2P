%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  _                    _             _   %
% | |    __ _ _ __ ___ | |__       _-(")- %
% | |   / _` | '_ ` _ \| '_ \    `%%%%%   %
% | |__| (_| | | | |_| | |_) | _  // \\   %
% |_____\__,_|_| |_| |_|_.__/_| |__  ___  %
%                  | |   / _` | '_ \/ __| %
%                  | |__| (_| | |_) \__ \ %
%  2018-12-13      |_____\__,_|_.__/|___/ %
%                                         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                         %
%              Tic Tac Toe                %
%                                         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function DrawBoard(GameState)
  
  if GameState(1,1)==1     % If Field 1,1 is occupied by player 1
    Field1Mark = 'O';      % Display O
  elseif GameState(1,1)==2 % If Field 1,1 is occupied by player 2
    Field1Mark = 'X';      % Display X
  else                     % If Field 1,1 is occupied by nobody
    Field1Mark = '1';      % Display Field number
  end
  
  if GameState(1,2)==1     % If Field 1,1 is occupied by player 1
    Field2Mark = 'O';      % Display O
  elseif GameState(1,2)==2 % If Field 1,1 is occupied by player 2
    Field2Mark = 'X';      % Display X
  else                     % If Field 1,1 is occupied by nobody
    Field2Mark = '2';      % Display Field number
  end
  
  if GameState(1,3)==1     % If Field 1,1 is occupied by player 1
    Field3Mark = 'O';      % Display O
  elseif GameState(1,3)==2 % If Field 1,1 is occupied by player 2
    Field3Mark = 'X';      % Display X
  else                     % If Field 1,1 is occupied by nobody
    Field3Mark = '3';      % Display Field number
  end
  
  if GameState(2,1)==1     % If Field 1,1 is occupied by player 1
    Field4Mark = 'O';      % Display O
  elseif GameState(2,1)==2 % If Field 1,1 is occupied by player 2
    Field4Mark = 'X';      % Display X
  else                     % If Field 1,1 is occupied by nobody
    Field4Mark = '4';      % Display Field number
  end
  
  if GameState(2,2)==1     % If Field 1,1 is occupied by player 1
    Field5Mark = 'O';      % Display O
  elseif GameState(2,2)==2 % If Field 1,1 is occupied by player 2
    Field5Mark = 'X';      % Display X
  else                     % If Field 1,1 is occupied by nobody
    Field5Mark = '5';      % Display Field number
  end
  
  if GameState(2,3)==1     % If Field 1,1 is occupied by player 1
    Field6Mark = 'O';      % Display O
  elseif GameState(2,3)==2 % If Field 1,1 is occupied by player 2
    Field6Mark = 'X';      % Display X
  else                     % If Field 1,1 is occupied by nobody
    Field6Mark = '6';      % Display Field number
  end
  
  if GameState(3,1)==1     % If Field 1,1 is occupied by player 1
    Field7Mark = 'O';      % Display O
  elseif GameState(3,1)==2 % If Field 1,1 is occupied by player 2
    Field7Mark = 'X';      % Display X
  else                     % If Field 1,1 is occupied by nobody
    Field7Mark = '7';      % Display Field number
  end
  
  if GameState(3,2)==1     % If Field 1,1 is occupied by player 1
    Field8Mark = 'O';      % Display O
  elseif GameState(3,2)==2 % If Field 1,1 is occupied by player 2
    Field8Mark = 'X';      % Display X
  else                     % If Field 1,1 is occupied by nobody
    Field8Mark = '8';      % Display Field number
  end
  
  if GameState(3,3)==1     % If Field 1,1 is occupied by player 1
    Field9Mark = 'O';      % Display O
  elseif GameState(3,3)==2 % If Field 1,1 is occupied by player 2
    Field9Mark = 'X';      % Display X
  else                     % If Field 1,1 is occupied by nobody
    Field9Mark = '9';      % Display Field number
  end
  
  %Construct String to display
  Line00 = sprintf('            ');
  Line01 = sprintf('    |   |   ');
  Line02 = sprintf('  %c | %c | %c ',Field1Mark,Field2Mark,Field3Mark);
  Line03 = sprintf('    |   |   ');
  Line04 = sprintf(' ---+---+---');
  Line05 = sprintf('    |   |   ');
  Line06 = sprintf('  %c | %c | %c ',Field4Mark,Field5Mark,Field6Mark);
  Line07 = sprintf('    |   |   ');
  Line08 = sprintf(' ---+---+---');
  Line09 = sprintf('    |   |   ');
  Line10 = sprintf('  %c | %c | %c ',Field7Mark,Field8Mark,Field9Mark);
  Line11 = sprintf('    |   |   ');
  Line12 = sprintf('            ');
  
  %Display board on screen
  clc;
  disp(Line00);
  disp(Line01);
  disp(Line02);
  disp(Line03);
  disp(Line04);
  disp(Line05);
  disp(Line06);
  disp(Line07);
  disp(Line08);
  disp(Line09);
  disp(Line10);
  disp(Line11);
  disp(Line12);
  
end