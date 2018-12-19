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

function [ChildPoints,ChildLines] = CreateCreatureFromParent(FatherPoints,FatherLines,MotherPoints,MotherLines)
  FatherPointsLength = size(FatherPoints,1); % Get how many points father has
  MotherPointsLength = size(MotherPoints,1); % Get how many points mother has
  
  FatherPointsInheritance = FatherPointsLength/2 + FatherPointsLength/4*3*randn(1,1); % Randomly selects how many points will be
  FatherPointsInheritance = min(max(FatherPointsInheritance,1),FatherPointsLength);   % inherited form father
  FatherPointsInheritance = floor(FatherPointsInheritance);
  
  MotherPointsInheritance = MotherPointsLength/2 + MotherPointsLength/4*3*randn(1,1); % Randomly selects how many points will be
  MotherPointsInheritance = min(max(MotherPointsInheritance,1),MotherPointsLength);   % inherited form mother
  MotherPointsInheritance = ceil(MotherPointsInheritance);
  
  ChildPoints = [FatherPoints(1:FatherPointsInheritance  ,:) ;
                 MotherPoints(MotherPointsInheritance:end,:)];
  
  FatherLinesLength = size(FatherLines,1); % Get how many lines father has
  MotherLinesLength = size(MotherLines,1); % Get how many lines mother has
  
  FatherLinesInheritance = FatherLinesLength/2 + FatherLinesLength/4*3*randn(1,1); % Randomly selects how many lines will be
  FatherLinesInheritance = min(max(FatherLinesInheritance,1),FatherLinesLength);   % inherited form father
  FatherLinesInheritance = floor(FatherLinesInheritance);
  
  MotherLinesInheritance = MotherLinesLength/2 + MotherLinesLength/4*3*randn(1,1); % Randomly selects how many lines will be
  MotherLinesInheritance = min(max(MotherLinesInheritance,1),MotherLinesLength);   % inherited form mother
  MotherLinesInheritance = ceil(MotherLinesInheritance);
  
  ChildLines = [FatherLines(1:FatherLinesInheritance  ,:) ;
                MotherLines(MotherLinesInheritance:end,:)];
  
end