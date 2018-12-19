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

function [Points,Lines] = CreateRandomCreature(maxPointLength,maxLinesLength)
  PointsLength = randi([1,maxPointLength],1,1); % Randomly selects how many points the created creature will have. 
  Points = -10 + (10-(-10))*rand(PointsLength,2); % Randomly generate points of the creature
  
  LinesLength = randi([1,maxLinesLength],1,1); % Randomly selects how many lines the created creature will have
  Lines = randi([1,PointsLength],LinesLength,2); %Randomly generate lines of the creature
  
end