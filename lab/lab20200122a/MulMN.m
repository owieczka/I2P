function [C] = MulMN (A, B)
lenA = length(A);
lenB = length(B);
if lenA < lenB %Number B should be shorter
  T = A;
  A = B;
  B = T;
end
lenA = length(A);
lenB = length(B);

C = [0];
for i=lenB:-1:1
  PartialMul = MulMNByDigit(A,B(i));
  PartialMul = ShiftMN(PartialMul,lenB-i);
  C = AddMN(C,PartialMul);
end

end