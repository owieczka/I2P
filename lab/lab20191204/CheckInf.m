function [IsGoingToInf]=CheckInf(z,n)
  
  for i=1:n
    z = (z-0.5).^2;
  end
  
  if abs(z)>1
    IsGoingToInf = 1;
  else
    IsGoingToInf = 0;
  end

end