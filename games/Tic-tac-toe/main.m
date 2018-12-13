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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Initialization
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
GameState = zeros(3,3); % Reprezentation of the board
                        % Value 0 means empty field
                        % Value 1 means occupied by O - Player 1
                        % Value 2 means occupied by X - Player 2
CurrentPlayer = 1;      % Indicator which player has turn 

for Turn = 1:9
  DrawBoard(GameState);   % Display current status of the game as a board to the players

  for TryId = 1:100
    SelectedField = AskPlayer(CurrentPlayer); % Ask the player to make a move
    if CheckIfSelectedFieldIsEmpty(SelectedField,GameState)==1; % Check whether selected by the player filed is empty
      break; %If so break the loop and continue with the game
    end
    %if not ask the player to select valid (empty) field 
    disp('Selected field is already taken. Please select another one.'); 
  end

  GameState = ModifyGameState(SelectedField,GameState,CurrentPlayer); %Modify current gameState according to player move

  WinningPlayer = CheckWinningCondition(GameState); %Check whether somebody wines
  if WinningPlayer~=0
    break;
  end
  
  if CurrentPlayer == 1 % If this turn was player 1
    CurrentPlayer = 2;  % next will be player 2
  else                  % If not, so if this turn was player 2
    CurrentPlayer = 1;  % next will be player 1
  end
end

DrawBoard(GameState);
if WinningPlayer == 1
  disp('CONGRATULATION Player 1 WINS');
elseif WinningPlayer == 2
  disp('CONGRATULATION Player 2 WINS');
else
  disp('No body wins');
end