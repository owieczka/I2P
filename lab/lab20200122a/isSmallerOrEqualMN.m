function [ans] = isSmallerOrEqualMN (A, B)
lenA = length(A);
lenB = length(B);
ans = 1;
if lenA < lenB
  ans = 1;
else
  if lenA > lenB
    ans = 0;
  else
    %lenA == lenB
    for i=1:lenA
      if A(i) < B(i)
        ans = 1;
        break;
      else
        if A(i) > B(i)
          ans = 0;
          break;
        end
      end
    end
  end
end
end