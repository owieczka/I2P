clear
clc

A = [9 9 9 9 -1 9]; %First number in vector representation
B = [-1 1]; %Second number in vector representation
C = AddMNF(A,B); %Calculate sum of A and B
disp(['Sum of ' DispMNF(A) ' and ' DispMNF(B) ' is ' DispMNF(C)]);

A = [1 0 0 0 0]; %First number in vector representation
B = [-1 1]; %Second number in vector representation
C = SubMNF(A,B); %Calculate diff of A and B
disp(['Difference of ' DispMNF(A) ' and ' DispMNF(B) ' is ' DispMNF(C)]);

A = [1 2 3 4 -1 5]; %First number in vector representation
B = [1 -1 1]; %Second number in vector representation
C = MulMNF(A,B); %Calculate Multiplication of A by B
disp(['Multiplication of ' DispMNF(A) ' by ' DispMNF(B) ' is ' DispMNF(C)]);

%FibonacciMN(100);

%isSmallerMN([1 1],[1 0])
%A = [2 0];
%C = FactorialMN(A);
%disp(['Factorial of ' DispMN(A) ' is ' DispMN(C)]);