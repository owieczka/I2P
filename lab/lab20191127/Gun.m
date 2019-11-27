function [ret]=Gun(vector)
  len = length(vector);
  ret = 1;
  for i=1:len
    if mod(vector(i),2)==1
      ret = ret + vector(i)^2;
    else
      ret = ret + vector(i);
    end
  end
end