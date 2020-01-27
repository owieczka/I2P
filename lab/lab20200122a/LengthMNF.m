function [IntegerLen, FractionalLen] = LengthMNF (A)
lenA = length(A);
IntegerLen = 0;
FractionalLen = 0;
for i=1:lenA 
  if A(i)==-1
    break;
  end
  IntegerLen = IntegerLen + 1;
end
for j=i+1:lenA
  if A(j)==-1
    disp('Error');
  end
  FractionalLen = FractionalLen + 1;
  
end

end