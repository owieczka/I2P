function []=DisplayWorld(World)
LivingCellChar = 'o';
DeadCellChar = '#';
clc
for i=1:size(World,1)
  DispVector = [' '];
  for j=1:size(World,2)
    if World(i,j)==1
      DispVector = [DispVector LivingCellChar];
    else
      DispVector = [DispVector DeadCellChar];
    end
  end
  disp(DispVector);
end
pause(0.5);
end