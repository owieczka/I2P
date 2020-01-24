function [C] = SubMN (A, B)
lenA = length(A);
lenB = length(B);
lenC = max(lenA,lenB);

A = ExtendMN(A,lenC);
B = ExtendMN(B,lenC);
C = zeros(1,lenC);

carry = 0;
for i=lenC:-1:1
  if A(i) < B(i) %Borow condition
    A(i-1) = A(i-1) - 1;
    C(i) = A(i) + 10 - B(i);
  else
    C(i) = A(i) - B(i);
  end
end

C = TrimMN(C);
end