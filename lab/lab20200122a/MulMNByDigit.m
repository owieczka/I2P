function [C] = MulMNByDigit (A, Digit)
lenA = length(A);
lenC = lenA;
C = zeros(1,lenC);

carry = 0;
for i=lenC:-1:1
  partialSum = A(i) * Digit + carry;
  carry = floor(partialSum/10);
  C(i) = mod(partialSum,10);
end

if carry>0
  C = [carry C];
end

end