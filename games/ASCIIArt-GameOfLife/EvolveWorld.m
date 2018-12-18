%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  _                    _             _   %
% | |    __ _ _ __ ___ | |__       _-(")- %
% | |   / _` | '_ ` _ \| '_ \    `%%%%%   %
% | |__| (_| | | | |_| | |_) | _  // \\   %
% |_____\__,_|_| |_| |_|_.__/_| |__  ___  %
%                  | |   / _` | '_ \/ __| %
%                  | |__| (_| | |_) \__ \ %
%  2018-12-18      |_____\__,_|_.__/|___/ %
%                                         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                         %
%            ASCIIArt-GameOfLife          %
%                                         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [NewWorldState] = EvolveWorld(WorldState)
  
  [Height, Width] = size(WorldState); % Get size of the world
  
  NewWorldState = zeros(Height,Width); % Create new world state
  
  for y=1:Height % Loop over each row 
    for x=1:Width % and each column of the WorldState
      CountLivingCels = CountNeighboringLivingCells(WorldState,y,x);
      if WorldState(y,x) == 1 % If given field is occupied by living cell
        if CountLivingCels < 2  % If it is alone
          NewWorldState(y,x) = 0; % It is dieing from loneliness
        elseif CountLivingCels < 4
          NewWorldState(y,x) = 1; % It has perfect condition and it is living
        else
          NewWorldState(y,x) = 0; % It is dieing from overcrowdedness
        end
      else % If given field is empty
        if CountLivingCels == 3 % If empty filed has 3 neighbourings 
          NewWorldState(y,x) = 1; % a new cell has born
        else                    % If not
          NewWorldState(y,x) = 0; % filed is still empty
        end
      end
    end
  end

end