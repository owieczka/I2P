function [Count]=NumberOfLivingCellInTheNeighbourhood(World,i,j)
  Count=0;
  %+-------+-------+-------+---> j
  %|i-1,j-1|i-1,j  |i-1,j+1|
  %+-------+-------+-------+
  %|i  ,j-1|i  ,j  |i  ,j+1|
  %+-------+-------+-------+
  %|i+1,j-1|i+1,j  |i+1,j+1|
  %+-------+-------+-------+
  %|
  %|
  %v i
  if j-1>= 1 && World(i,j-1)==1
    Count = Count+1;
  end
  if j+1<= size(World,2) && World(i,j+1)==1
    Count = Count+1;
  end
  if i-1>= 1 && World(i-1,j)==1
    Count = Count+1;
  end
  if i+1<= size(World,1) && World(i+1,j)==1
    Count = Count+1;
  end
end