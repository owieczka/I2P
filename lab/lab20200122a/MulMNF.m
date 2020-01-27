function [C] = MulMNF (A, B)
[IntegerLenA FractionalLenA] = LengthMNF(A);
[IntegerLenB FractionalLenB] = LengthMNF(B);

A(find(A==-1))=[];
B(find(B==-1))=[]; %Remove -1

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

C = TrimMN(C);
lenC = length(C);
C = [C(1:lenC-FractionalLenA-FractionalLenB) -1 C(lenC-FractionalLenA-FractionalLenB+1:end)];

end