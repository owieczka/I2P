function [C] = AddMN (A, B)
lenA = length(A);
lenB = length(B);
lenC = max(lenA,lenB);

A = ExtendMN(A,lenC);
B = ExtendMN(B,lenC);
C = zeros(1,lenC);

carry = 0;
for i=lenC:-1:1
  partialSum = A(i) + B(i) + carry;
  carry = floor(partialSum/10);
  C(i) = mod(partialSum,10);
end

if carry>0
  C = [carry C];
end

end