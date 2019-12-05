function [vecx]=CreateVector(r,n,x)
  vecx = zeros(1,n);
  for i=1:n
    x=r*x*(1-x);
    vecx(i)=x;
  end
end