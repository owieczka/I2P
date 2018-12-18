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

function DisplayWorld(WorldState,LivedCellCharacter,DiedCellCharacter)

  [Height, Width] = size(WorldState); % Get size of the world
  
  dispWorld = repmat(DiedCellCharacter,Height,Width) % Create matrix of characters and fill in with DiedCellCharacter
  
  for y=1:Height % Loop over each row 
    for x=1:Width % and each column of the WorldState
      if WorldState(y,x) == 1 % If given field is occupied by living cell
        dispWorld(y,x) = LivedCellCharacter; % In position of living cell insert LivedCellCharacter
      end
    end
  end

  %Display World on screen
  clc;
  for y=1:Height
    disp(dispWorld(y,:));
  end  
end