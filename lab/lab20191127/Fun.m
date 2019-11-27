function [ret]=Fun(vector)
  len = length(vector);
  if len==1
    ret = Gun(vector);
  else
    Part1 = vector(1:floor(len/2));
    Part2 = vector(floor(len/2)+1:end);
    %ret = Gun(Part1) + Hun(Part2);
    %ret = Hun(Part1) + Hun(Part2);
    %ret = Gun(Part1) + Gun(Part2);
    ret = Fun(Part1) + Fun(Part2);
  end
end