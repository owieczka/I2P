clear
clc

A = [9 9 9 9]; %First number in vector representation
B = [1]; %Second number in vector representation
C = AddMN(A,B); %Calculate sum of A and B
disp(['Sum of ' DispMN(A) ' and ' DispMN(B) ' is ' DispMN(C)]);

A = [1 0 0 0 0]; %First number in vector representation
B = [1]; %Second number in vector representation
C = SubMN(A,B); %Calculate diff of A and B
disp(['Difference of ' DispMN(A) ' and ' DispMN(B) ' is ' DispMN(C)]);

A = [1 2 3 4 5]; %First number in vector representation
B = 3; %Digit
C = MulMNByDigit(A,B); %Calculate Multiplication of A by digit B
disp(['Multiplication of ' DispMN(A) ' by ' DispMN([B]) ' is ' DispMN(C)]);

A = [1 2 3 4 5]; %First number in vector representation
B = [1 1]; %Second number in vector representation
C = MulMN(A,B); %Calculate Multiplication of A by B
disp(['Multiplication of ' DispMN(A) ' by ' DispMN(B) ' is ' DispMN(C)]);

FibonacciMN(100);

%isSmallerMN([1 1],[1 0])
A = [2 0];
C = FactorialMN(A);
disp(['Factorial of ' DispMN(A) ' is ' DispMN(C)]);