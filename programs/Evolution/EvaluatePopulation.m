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

function [score] = EvaluatePopulation(Points,Lines)
  PopulationLength = length(Points); % Get how many creatures we have
  
  score = zeros(PopulationLength,1); % Create vector of scores
  for i = 1:PopulationLength
    %score(i) = EvaluateCreature(Points{i},Lines{i}); % Evaluate each creature and store the its score
    %score(i) = EvaluateRoundnessCreature(Points{i},Lines{i}); % Evaluate each creature and store the its score
    score(i) = EvaluateAverageDistanceCreature(Points{i},Lines{i}); % Evaluate each creature and store the its score
  end
  
end