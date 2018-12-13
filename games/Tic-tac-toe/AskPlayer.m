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

function SelectedField = AskPlayer(CurrentPlayer)
  Question = sprintf("Dear player %d, in which field (1-9) you would like to put your mark");
  disp(Question);
  Answer = input('?'); % Ask the user to provide answer
  
  while Answer < 1 || Answer > 9         % Check whether provided answer is one of the possible fields
    disp('Wrong field number. Please select field from 1 to 9.'); % If not prompt the user to provide correct number
    Answer = input('?'); % Ask the user again
  end
  
  % If the user provide one of the correct field numbers convert fieldNumber to position in gameState matrix
  i = floor((Answer-1) / 3) + 1; % Calculate the row
  j = mod  ((Answer-1) , 3) + 1; % Calculate the column
  SelectedField = [i,j];         % Return row and column as two element vector
end