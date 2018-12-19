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

function [NewChildPoints,NewChildLines] = IntroduceRandomModifications(ChildPoints,ChildLines,probability)
  NewChildPoints = ChildPoints;
  NewChildLines = ChildLines;
  
  PointsLength = size(NewChildPoints,1);
  while rand(1,1)<probability
    pointIndex = randi([1,PointsLength],1,1);
    NewChildPoints(pointIndex,:) = NewChildPoints(pointIndex,:) + randn(1,2);
  end
end