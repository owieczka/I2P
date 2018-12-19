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

clear
clc

maxPopulationLenght = 20; % How big population of creatures we can have

%=================================
% Create new population
%=================================

for i = 1:maxPopulationLenght
  [Points{i},Lines{i}] = CreateRandomCreature(10,10);
end


%=================================
% Start counting years
%=================================
for year = 1:30
  
  PopulationLenght = length(Points); % Get the size of current population
  
  title = sprintf('Year: %03d\n Population: %03d',year,PopulationLenght);
  disp(title);
  
  DisplayPopulation(Points,Lines); % Display entire population of creature

  %=================================
  % Evaluate the population
  %=================================

  score = EvaluatePopulation(Points,Lines); % Evaluate entire population of creatures

  [score, permutation] = sort(score,'descend'); % Soft the creatures for the best (higher score) to the worst (lower score)
  Points = Points(permutation); % Rearrange the points according to order from best to worst 
  Lines  = Lines(permutation);  % Rearrange the lines according to order from best to worst

  disp(score);

  %=================================
  % The winnter is comming ... 
  %=================================
  PopulationLenght = length(Points); % Get the size of current population
  NumberOfCreaturesSurvives = PopulationLenght + 3*PopulationLenght/2*randn(1,1); % Randomly selects how many creatures will survives this year
  if NumberOfCreaturesSurvives < 2 % If no creature survives 
    NumberOfCreaturesSurvives = 2; % we force to survives at least 2 (father and mother of new generation)
  end
  if NumberOfCreaturesSurvives>PopulationLenght % If all creatures survives
    NumberOfCreaturesSurvives = PopulationLenght-1; % we force to kill at least one
  end
  NumberOfCreaturesSurvives = round(NumberOfCreaturesSurvives);
  
  % and the least adapted creature have not survives the winter
  Points = Points(1:NumberOfCreaturesSurvives); % We remove all creatures that did not survive the winter
  Lines  = Lines(1:NumberOfCreaturesSurvives);

  %=================================
  % After winter, spring is coming 
  % and creatures reproduces
  %=================================
  childIndex = NumberOfCreaturesSurvives+1;
  
  %while childIndex > maxPopulationLenght
  
  numberOfChildren = ceil((maxPopulationLenght- NumberOfCreaturesSurvives)/NumberOfCreaturesSurvives); % Calculated how many childer each pair will have
  
  for parentIndex =1:2:NumberOfCreaturesSurvives
    motherIndex = parentIndex+0;
    fatherIndex = parentIndex+1;
    
    for a = 1:numberOfChildren
      [ChildPoints,ChildLines] = CreateCreatureFromParent(Points{motherIndex},Lines{motherIndex},Points{fatherIndex},Lines{fatherIndex});
    
      if CheckCreatureSurvivesBirth(ChildPoints,ChildLines)==1 % Check whether child will survives its births
        Points{childIndex} = ChildPoints;
        Lines{childIndex}  = ChildLines;
        childIndex = childIndex+1;
      end
    end
  end

end
