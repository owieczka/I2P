function [str] = NumberMNF (A)
lenA = length(A);
str = [];
for i=1:lenA
  switch A(i)
    case '0'
      str = [str 0];
    case '1'
      str = [str 1];
    case '2'
      str = [str 2];
    case '3'
      str = [str 3];
    case '4'
      str = [str 4];
    case '5'
      str = [str 5];
    case '6'
      str = [str 6];
    case '7'
      str = [str 7];
    case '8'
      str = [str 8];
    case '9'
      str = [str 9];
    case '.'
      str = [str -1];
  end
 
end
end