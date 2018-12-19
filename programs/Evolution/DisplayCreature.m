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

function DisplayCreature(Points,Lines)
  LinesLenght = size(Lines,1); % Get how many lines creature has

  for i=1:LinesLenght
    startLineIndex = Lines(i,1); % Get index of a start point of a i-th line
      endLineIndex = Lines(i,2); % Get index of a end point of a i-th line
    xCoordPoints = [Points(startLineIndex,1), Points(endLineIndex,1)];
    yCoordPoints = [Points(startLineIndex,2), Points(endLineIndex,2)];
    
    plot(xCoordPoints,yCoordPoints,'b.-');
    hold on
  end
  hold off
  axis([-10,10,-10,10]);
end