function [C] = SubMNF (A, B)
[IntegerLenA FractionalLenA] = LengthMNF(A);
[IntegerLenB FractionalLenB] = LengthMNF(B);

IntegerLenC = max(IntegerLenA,IntegerLenB);
FractionalLenC = max(FractionalLenA,FractionalLenB);

A = ExtendMNF(A,[IntegerLenC FractionalLenC]);
B = ExtendMNF(B,[IntegerLenC FractionalLenC]);

A(find(A==-1))=[];
B(find(B==-1))=[]; %Remove -1

C = SubMN(A,B);

lenC = length(C);
C = [C(1:lenC-FractionalLenC) -1 C(lenC-FractionalLenC+1:end)];

C = TrimMNF(C);

end