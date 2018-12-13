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

function Correct = CheckIfSelectedFieldIsEmpty(SelectedField,GameState)
  i = SelectedField(1); % Take row number of SelectedField
  j = SelectedField(2); % Take column number of SelectedField
  if GameState(i,j)==0  % If the field is empty (value 0) in GameState than player can put his/hers mark there
    Correct = 1;        % Return value 1 - which means yes the move is correct and the player can put make there
  else
    Correct = 0;        % Return value 0 - which means no requested filed is already taken by someone player must pick another field
  end
end