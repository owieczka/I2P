%Create empty world
WorldWidth = 10;
WorldHeight = 10;
World = zeros(WorldHeight,WorldWidth);
%Insert living cells
World(4,4)=1;
World(4,5)=1;
World(5,5)=1;
%###
%##o
%o#o
%#oo

%Main loop
for i=1:10 %loop start
  DisplayWorld(World);
  World=UpdateWorld(World);
end %loop end
%##########
%##########
%##########
%###oo#####
%####o#####
%##########
%##########
%##########
%##########
%##########
%##########
