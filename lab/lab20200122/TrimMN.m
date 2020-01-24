function [C] = TrimMN (A)
lenA = length(A);
for i=1:lenA
  if A(i)>0
    break
  end
end

C = A(i:end);

end