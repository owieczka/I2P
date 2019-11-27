function [ret]=Fun2(vector)
  len = length(vector);
  if len==1
    ret = vector;
  else
    Part1 = vector(1:floor(len/2));
    Part2 = vector(floor(len/2)+1:end);
    %ret = Gun(Part1) + Hun(Part2);
    %ret = Hun(Part1) + Hun(Part2);
    %ret = Gun(Part1) + Gun(Part2);
    ret = [Fun2(Part1) Fun2(Part2)];
    ret = Gun2(ret);
  end
end