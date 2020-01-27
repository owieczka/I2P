function [C] = FactorialMN(N)
A = [1];
B = [1];
C = [1];
while isSmallerOrEqualMN(A,N)==1
  %disp(C);
  %disp(A);
  %disp(' ');
  C = MulMN(A,C);
  A = AddMN(A,B);
end
end