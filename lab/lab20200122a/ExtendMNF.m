function [C] = ExtendMNF (A, Len)
IntegerLenC = Len(1); FractionalLenC = Len(2);
[IntegerLenA, FractionalLenA] = LengthMNF (A);
lenA = length(A);
C = [zeros(1,IntegerLenC-IntegerLenA) A];
if lenA == IntegerLenA+FractionalLenA
  C = [C -1];
end
C = [C zeros(1,FractionalLenC-FractionalLenA)];
end