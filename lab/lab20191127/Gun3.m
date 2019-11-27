function [ret]=Gun3(Vector1,Vector2)
  ret = [];
  i1=1;
  i2=1;
  while i1<=Length(Vector1) && i2<=Length(Vector2)
    if Vector1(i1)<Vector2(i2)
      ret = [ret Vector1(i1)]
      i1 = i1+1;
    else
      ret = [ret Vector1(i2)]
      i2 = i2+1;
    end
  end
end

