function [C] = ExtendMN (A, n)
lenA = length(A);
C = [zeros(1,n-lenA) A];
end