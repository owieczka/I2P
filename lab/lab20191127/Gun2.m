function [ret]=Gun2(vector)
  i1=randi([1 length[vector],1);
  i2=randi([1 length[vector],1);
  tmp = vector(i2);
  vector(i2)=vector(i1);
  vector(i1)=tmp;
  ret = vector;
end