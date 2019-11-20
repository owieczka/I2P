function [NewWorld]=UpdateWorld(World)
NewWorld = zeros(size(World));
for i=1:size(World,1)
  for j=1:size(World,2)
    if World(i,j) = 1 % Living cell
      Count=NumberOfLivingCellInTheNeighbourhood(World,i,j);
      if Count<2
      %1
      %If the living cell is surounded by less than 2 living cells it is dead in the new world
        NewWorld(i,j)=0;
      end
      if Count==2 || Count==3
      %2
      %If the living cell is surrounded by 2 or 3 living cells it is still living in the new world
        NewWorld(i,j)=1;
      end
      if Count>3
      %3
      %If the living cell is surrounded by more than 3 living cells it is dead in the new world
        NewWorld(i,j)=0;
      end
    else %Dead cell
      Count=NumberOfLivingCellInTheNeighbourhood(World,i,j);
      if Count==3
      %4
      %If the dead cell is surrounded by 3 living cells it is   living in the new world
        NewWorld(i,j)=1;
      end
    end
  end
end

end