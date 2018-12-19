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

function [score] = EvaluateAverageDistanceCreature(Points,Lines)
  LinesLength = size(Lines,1); % Get how many lines creature has
  PointsLength = size(Points,1); % Get how many points creature has

  score = 0;
  
  minX=Points(Lines(1,1),1);
  maxX=Points(Lines(1,1),1);
  minY=Points(Lines(1,1),2);
  maxY=Points(Lines(1,1),2);
  for i=1:LinesLength
    startLineIndex = Lines(i,1); % Get index of a start point of a i-th line
      endLineIndex = Lines(i,2); % Get index of a end point of a i-th line
    xCoordPoints = [Points(startLineIndex,1), Points(endLineIndex,1)];
    yCoordPoints = [Points(startLineIndex,2), Points(endLineIndex,2)];
    
    minX = min(minX, xCoordPoints(1));
    maxX = max(maxX, xCoordPoints(1));
    minX = min(minX, xCoordPoints(2));
    maxX = max(maxX, xCoordPoints(2));
    minY = min(minY, yCoordPoints(1));
    maxY = max(maxY, yCoordPoints(1));
    minY = min(minY, yCoordPoints(2));
    maxY = max(maxY, yCoordPoints(2));
    
    LineLength = sqrt((xCoordPoints(1)-xCoordPoints(2))^2+(yCoordPoints(1)-yCoordPoints(2))^2);
    score = score + LineLength; % Lengthly creatures are better (higher score);
  end
  if ((maxX-minX)*(maxY-minY))>0
    score = score/LinesLength/((maxX-minX)*(maxY-minY)) - LinesLength/5;
    %score = score/((maxX-minX+0.1)*(maxY-minY+0.1)) - LinesLength/5;
  else
   score = 0;
  end
  
  LL = unique(Lines(:));
  PointsLength = length(LL);
  score1 = 0;
  minX=Points(LL(1),1);
  maxX=Points(LL(1),1);
  minY=Points(LL(1),2);
  maxY=Points(LL(1),2);
  for i=1:PointsLength
    for j=1:PointsLength
      LineLength = sqrt((Points(LL(i),1)-Points(LL(j),1))^2+(Points(LL(i),2)-Points(LL(j),2))^2);
      score1 = score1 + LineLength;
    end
    minX = min(minX, Points(LL(i),1));
    maxX = max(maxX, Points(LL(i),1));
    minY = min(minY, Points(LL(i),2));
    maxY = max(maxY, Points(LL(i),2));
  end
  
  if ((maxX-minX)*(maxY-minY))>0
    %score1 = score1/(PointsLength^2)/((maxX-minX+0.1)*(maxY-minY+0.1)) - PointsLength/100;
    score1 = score1/((maxX-minX)*(maxY-minY)) - PointsLength/100;
  else
    score1 = 0;
  end
  
  score = score + score1;
end