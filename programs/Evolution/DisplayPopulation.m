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

function DisplayPopulation(Points,Lines)
  PopulationLength = length(Points); % Get how many creatures we have
  
  SubPlotWidth = ceil(sqrt(PopulationLength));

  for i= 1:PopulationLength
    subplot(SubPlotWidth,SubPlotWidth,i);
    DisplayCreature(Points{i},Lines{i});
  end
  
end