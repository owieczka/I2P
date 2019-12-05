function [vecx]=CreateVector2(r,n,x)
  rsize = length(r);
  vecx = zeros(rsize,n);
  x = repmat(x,rsize,1);
  one = repmat(1,rsize,1);
  for i=1:n
    x=r.*x.*(one-x);
    vecx(:,i)=x;
  end
end