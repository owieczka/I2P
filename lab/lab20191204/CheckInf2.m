function [IsGoingToInf]=CheckInf(z,n,z0)
  for i=1:n
    z = (z-z0).^2;
  end
  if abs(z)>1
    IsGoingToInf = 1;
  else
    IsGoingToInf = 0;
    
  end
end