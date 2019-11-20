function [count]=CountCapitalLetters(Word)
%for i=1:lenght(Word)
%  if Word(i)=='A' %strcmp(Word(i),'A')
%    count=count+1
%  end
%  if Word(i)=='B'
%    count=count+1
%  end
%  if Word(i)=='C'
%    count=count+1
%  end
%  if Word(i)=='D'
%    count=count+1
%  end
%end

%Letters= ['ABCDEFGH...'];
%for i=1:lenght(Word)
%  for j=1:lenght(Letters)
%    if Word(i)==Letters(j)
%      count=count+1
%    end
%  end
%end

%for i=1:lenght(Word)
%  if Word(i) >='A' && Word(i) <='Z'
%    count = count+1;
%  end
%end

count = sum(isstrprop(Word,'upper'));
end