%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  _                    _             _   %
% | |    __ _ _ __ ___ | |__       _-(")- %
% | |   / _` | '_ ` _ \| '_ \    `%%%%%   %
% | |__| (_| | | | |_| | |_) | _  // \\   %
% |_____\__,_|_| |_| |_|_.__/_| |__  ___  %
%                  | |   / _` | '_ \/ __| %
%                  | |__| (_| | |_) \__ \ %
%  2018-12-18      |_____\__,_|_.__/|___/ %
%                                         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                         %
%            ASCIIArt-GameOfLife          %
%                                         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Conway's Game of Life
% Rules
% - Any live cell with fewer than two live neighbors dies, as if by underpopulation.
% - Any live cell with two or three live neighbors lives on to the next generation.
% - Any live cell with more than three live neighbors dies, as if by overpopulation.
% - Any dead cell with exactly three live neighbors becomes a live cell, as if by reproduction.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Initialization
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
WidthOfTheWorld  = 20;
HeightOfTheWorld = 20;

WorldState = zeros(HeightOfTheWorld,WidthOfTheWorld);

%Put some lived cells to the world
WorldState(8, 8) = 1; % Oscilator Line
WorldState(8, 9) = 1;
WorldState(8,10) = 1;

WorldState(15,15) = 1; % Solid Block
WorldState(15,16) = 1;
WorldState(16,15) = 1;
WorldState(16,16) = 1;


WorldState(15:19,15:19) = [1 1 1 0 1; % Infinity creature
                           1 0 0 0 0;
                           0 0 0 1 1;
                           0 1 1 0 1;
                           1 0 1 0 1];


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Run the world
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

for epoch = 1:1000 % Iterate the world

  DisplayWorld(WorldState,'*',' '); % Display the current world to the screen

  WorldState = EvolveWorld(WorldState); % Evolve the world 

end

