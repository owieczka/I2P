function [an]=CalcSeriesElement(an1,an2)
  an = an1+an2
  if an<1000
    CalcSeriesElement(a2,an);
  end
end