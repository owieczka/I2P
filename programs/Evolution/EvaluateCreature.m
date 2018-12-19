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

function [score] = EvaluateCreature(Points,Lines)
  LinesLenght = size(Lines,1); % Get how many lines creature has

  score = 0;
  
  for i=1:LinesLenght
    startLineIndex = Lines(i,1); % Get index of a start point of a i-th line
      endLineIndex = Lines(i,2); % Get index of a end point of a i-th line
    xCoordPoints = [Points(startLineIndex,1), Points(endLineIndex,1)];
    yCoordPoints = [Points(startLineIndex,2), Points(endLineIndex,2)];
    
    LineLength = sqrt((xCoordPoints(1)-xCoordPoints(2))^2+(yCoordPoints(1)-yCoordPoints(2))^2);
    score = score + LineLength; % Lengthly creatures are better (higher score);
  end
end