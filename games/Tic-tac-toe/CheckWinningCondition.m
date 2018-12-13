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

function WinningPlayer = CheckWinningCondition(GameState)
  if     GameState(1,1)==1 && GameState(1,2)==1 && GameState(1,3)==1
    % O|O|O
    % -+-+-
    %  | | 
    % -+-+-
    %  | | 
    WinningPlayer = 1;
  elseif GameState(1,1)==2 && GameState(1,2)==2 && GameState(1,3)==2
    % X|X|X
    % -+-+-
    %  | | 
    % -+-+-
    %  | | 
    WinningPlayer = 2;
  elseif GameState(2,1)==1 && GameState(2,2)==1 && GameState(2,3)==1
    %  | | 
    % -+-+-
    % O|O|O
    % -+-+-
    %  | | 
    WinningPlayer = 1;
  elseif GameState(2,1)==2 && GameState(2,2)==2 && GameState(2,3)==2
    %  | | 
    % -+-+-
    % X|X|X
    % -+-+-
    %  | | 
    WinningPlayer = 2;
  elseif GameState(3,1)==1 && GameState(3,2)==1 && GameState(3,3)==1
    %  | | 
    % -+-+-
    %  | | 
    % -+-+-
    % O|O|O
    WinningPlayer = 1;
  elseif GameState(3,1)==2 && GameState(3,2)==2 && GameState(3,3)==2
    %  | | 
    % -+-+-
    %  | | 
    % -+-+-
    % X|X|X
    WinningPlayer = 2;
  elseif GameState(1,1)==1 && GameState(2,1)==1 && GameState(3,1)==1
    % O| | 
    % -+-+-
    % O| | 
    % -+-+-
    % O| | 
    WinningPlayer = 1;
  elseif GameState(1,1)==2 && GameState(2,1)==2 && GameState(3,1)==2
    % X| | 
    % -+-+-
    % X| | 
    % -+-+-
    % X| | 
    WinningPlayer = 2;
  elseif GameState(1,2)==1 && GameState(2,2)==1 && GameState(3,2)==1
    %  |O| 
    % -+-+-
    %  |O| 
    % -+-+-
    %  |O| 
    WinningPlayer = 1;
  elseif GameState(1,2)==2 && GameState(2,2)==2 && GameState(3,2)==2
    %  |X| 
    % -+-+-
    %  |X| 
    % -+-+-
    %  |X| 
    WinningPlayer = 2;
  elseif GameState(1,3)==1 && GameState(2,3)==1 && GameState(3,3)==1
    %  | |O
    % -+-+-
    %  | |O
    % -+-+-
    %  | |O
    WinningPlayer = 1;
  elseif GameState(1,3)==2 && GameState(2,3)==2 && GameState(3,3)==2
    %  | |X
    % -+-+-
    %  | |X
    % -+-+-
    %  | |X
    WinningPlayer = 2;
  elseif GameState(1,1)==1 && GameState(2,2)==1 && GameState(3,3)==1
    % O| | 
    % -+-+-
    %  |O| 
    % -+-+-
    %  | |O
    WinningPlayer = 1;
  elseif GameState(1,1)==2 && GameState(2,2)==2 && GameState(3,3)==2
    % X| | 
    % -+-+-
    %  |X| 
    % -+-+-
    %  | |X
    WinningPlayer = 2;
  elseif GameState(1,3)==1 && GameState(2,2)==1 && GameState(3,1)==1
    %  | |O
    % -+-+-
    %  |O| 
    % -+-+-
    % O| | 
    WinningPlayer = 1;
  elseif GameState(1,3)==2 && GameState(2,2)==2 && GameState(3,1)==2
    %  | |X
    % -+-+-
    %  |X| 
    % -+-+-
    % X| | 
    WinningPlayer = 2;
  else
    WinningPlayer = 0; % No body wins
  end
end
