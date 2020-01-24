function [C] = FibonacciMN(n)
F0 = [0];
F1 = [1];
for i=1:n
  F2 = AddMN(F0,F1);
  F0 = F1;
  F1 = F2;
  disp(F2);  
end
end