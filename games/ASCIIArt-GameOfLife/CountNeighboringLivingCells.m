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

function [NumberOfLivingCells] = CountNeighboringLivingCells(WorldState, y, x)

  NumberOfLivingCells = 0; % Initialize to zero
  
  [Height, Width] = size(WorldState); % Get size of the world
  
  if x - 1 >= 1 % Check whether left neighbor exists
    if WorldState(y,x-1) == 1 % Check if it is living 
      NumberOfLivingCells = NumberOfLivingCells + 1; % If so increment counter of living cells
    end
  end
  
  if x + 1 <= Width % Check whether right neighbor exists
    if WorldState(y,x+1) == 1 % Check if it is living 
      NumberOfLivingCells = NumberOfLivingCells + 1; % If so increment counter of living cells
    end
  end

  if y + 1 <= Height % Check whether upper neighbor exists
    if WorldState(y+1,x) == 1 % Check if it is living 
      NumberOfLivingCells = NumberOfLivingCells + 1; % If so increment counter of living cells
    end
  end
  
  if y - 1 >= 1 % Check whether lower neighbor exists
    if WorldState(y-1,x) == 1 % Check if it is living 
      NumberOfLivingCells = NumberOfLivingCells + 1; % If so increment counter of living cells
    end
  end
  
  if x - 1 >= 1 && y + 1 <= Height% Check whether left upper neighbor exists
    if WorldState(y+1,x-1) == 1 % Check if it is living 
      NumberOfLivingCells = NumberOfLivingCells + 1; % If so increment counter of living cells
    end
  end
  
  if x + 1 <= Width && y + 1 <= Height % Check whether right upper neighbor exists
    if WorldState(y+1,x+1) == 1 % Check if it is living 
      NumberOfLivingCells = NumberOfLivingCells + 1; % If so increment counter of living cells
    end
  end

  if x - 1 >= 1 && y - 1 >= 1 % Check whether left lower neighbor exists
    if WorldState(y-1,x-1) == 1 % Check if it is living 
      NumberOfLivingCells = NumberOfLivingCells + 1; % If so increment counter of living cells
    end
  end
  
  if x + 1 <= Width && y - 1 >= 1 % Check whether right lower neighbor exists
    if WorldState(y-1,x+1) == 1 % Check if it is living 
      NumberOfLivingCells = NumberOfLivingCells + 1; % If so increment counter of living cells
    end
  end
  
  
end