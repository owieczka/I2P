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

maxPopulationLength = 20; % How big population of creatures we can have
yearMax = 1000;

%=================================
% Create new population
%=================================

for i = 1:maxPopulationLength
  [Points{i},Lines{i}] = CreateRandomCreature(10,10);
end
figure(1);
DisplayPopulation(Points,Lines); % Display entire population of creature

%=================================
% Init statistics
%=================================

PopulationLengthList = zeros(yearMax,1);
maxScoreList = zeros(yearMax,1);
minScoreList = zeros(yearMax,1);
maxPointsLengthList = zeros(yearMax,1);
maxLinesLengthList = zeros(yearMax,1);
minPointsLengthList = zeros(yearMax,1);
minLinesLengthList = zeros(yearMax,1);
%=================================
% Start counting years
%=================================
for year = 1:yearMax
  
  PopulationLenght = length(Points); % Get the size of current population
  
  PointsLengthVec = cellfun('length',Points);
  LinesLengthVec = cellfun('length',Lines);
  
  title = sprintf('Year: %03d\n Population: %03d\n Genomsize: %d/%d\n',year,PopulationLenght,max(PointsLengthVec),max(LinesLengthVec));
  disp(title);
  
  %DisplayPopulation(Points,Lines); % Display entire population of creature
  
  %=================================
  % Evaluate the population
  %=================================

  score = EvaluatePopulation(Points,Lines); % Evaluate entire population of creatures

  [score, permutation] = sort(score,'descend'); % Soft the creatures for the best (higher score) to the worst (lower score)
  Points = Points(permutation); % Rearrange the points according to order from best to worst 
  Lines  = Lines(permutation);  % Rearrange the lines according to order from best to worst

  disp(score);

  PopulationLengthList(year) = PopulationLenght; %Get statistics
  maxScoreList(year) = max(score);
  minScoreList(year) = min(score);
  PointsLengthVec = cellfun('length',Points);
  LinesLengthVec = cellfun('length',Lines);
  maxPointsLengthList(year) = max(PointsLengthVec);
  minPointsLengthList(year) = min(PointsLengthVec);
  maxLinesLengthList(year) = max(LinesLengthVec);
  minLinesLengthList(year) = min(LinesLengthVec);
  
  
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
  
  numberOfChildren = ceil((maxPopulationLength- NumberOfCreaturesSurvives)/NumberOfCreaturesSurvives); % Calculated how many childer each pair will have
  
  for parentIndex =1:2:NumberOfCreaturesSurvives
    motherIndex = parentIndex+0;
    fatherIndex = parentIndex+1;
    
    for a = 1:numberOfChildren
      [ChildPoints,ChildLines] = CreateCreatureFromParent(Points{motherIndex},Lines{motherIndex},Points{fatherIndex},Lines{fatherIndex});
      
      [ChildPoints,ChildLines] = IntroduceRandomModifications(ChildPoints,ChildLines,0.5);
    
      if CheckCreatureSurvivesBirth(ChildPoints,ChildLines)==1 % Check whether child will survives its births
        Points{childIndex} = ChildPoints;
        Lines{childIndex}  = ChildLines;
        childIndex = childIndex+1;
      end
    end
  end

end

figure(2);
DisplayPopulation(Points,Lines); % Display entire population of creature
figure(3);
plot(PopulationLengthList);
figure(4);
semilogy(1:yearMax,maxScoreList,'r',1:yearMax,minScoreList,'b')
figure(5);
plot(1:yearMax,maxPointsLengthList,'r',1:yearMax,minPointsLengthList,'b')
figure(6);
plot(1:yearMax,maxLinesLengthList,'r',1:yearMax,minLinesLengthList,'b')
