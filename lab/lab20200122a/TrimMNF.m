function [C] = TrimMNF (A)
C = A;
lenC = length(C);
if C(1)~=-1
  for i=1:lenC
    if C(i)>0 || C(i) == -1
      break
    end
  end
  C = C(i:end);
end

lenC = length(C);
for i=1:lenC
  if C(i)==-1
    break;
  end
end
if i<lenC
  for i=lenC:-1:1
    if C(i)>0 || C(i) == -1
      break
    end
  end
  C = C(1:i);
end

if C(end) == -1
  C = C(1:end-1);
end

end