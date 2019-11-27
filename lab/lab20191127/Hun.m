function [ret]=Hun(vector)
  len = length(vector);
  ret = 1;
  for i=1:len
    ret = ret + sin(vector(i));
  end
end