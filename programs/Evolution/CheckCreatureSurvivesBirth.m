%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  _                    _             _   %
% | |    __ _ _ __ ___ | |__       _-(")- %
% | |   / _` | '_ ` _ \| '_ \    `%%%%%   %
% | |__| (_| | | | |_| | |_) | _  // \\   %
% |_____\__,_|_| |_| |_|_.__/_| |__  ___  %
%                  | |   / _` | '_ \/ __| %
%                  | |__| (_| | |_) \__ \ %
%  2018-12-19      |_____\__,_|_.__/|___/ %
%                                         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                         %
%         Evolution of Creatures          %
%                                         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [survives] = CheckCreatureSurvivesBirth(Points,Lines)
  
  survives = 1; % Creature is correct and it survives birth
  
  LinesLenght = size(Lines,1);  % Get how many lines creature has
  PointsLenght = size(Points,1);% Get how many points creature has

  for i=1:LinesLenght
    startLineIndex = Lines(i,1); % Get index of a start point of a i-th line
      endLineIndex = Lines(i,2); % Get index of a end point of a i-th line
    
    if startLineIndex>PointsLenght % Check genome correctness if lines starts at non existing point
      survives = 0;                % creature will not survives births
    end
    
    if endLineIndex>PointsLenght   % Check genome correctness if lines starts at non existing point
      survives = 0;                % creature will not survives births
    end
    
  end
end