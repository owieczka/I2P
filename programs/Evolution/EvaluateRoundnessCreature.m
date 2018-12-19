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

function [score] = EvaluateRoundnessCreature(Points,Lines)
  LinesLenght = size(Lines,1); % Get how many lines creature has
  PointsLenght = size(Points,1); % Get how many points creature has
  
  score = 0;
  if PointsLenght>1 
    middlePoint = mean(Points);
    sumRadius = 0;
    for i = 1:PointsLenght
      distance = sqrt((Points(i,1)-middlePoint(1))^2 + (Points(i,2)-middlePoint(2))^2);
      sumRadius = sumRadius+distance;
    end
    averageRadius = sumRadius/PointsLenght;

    for i = 1:PointsLenght
      distance = sqrt((Points(i,1)-middlePoint(1))^2 + (Points(i,2)-middlePoint(2))^2);
      diff = abs(distance-averageRadius);
      if diff>0
        score = score+1/diff;
      end
    end
    
    score = score/averageRadius;
  end
end