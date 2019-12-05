a=2;
stepa=0.05;
b=2;
stepb=0.05;

FractalImage = zeros(2*a/stepa+1,2*b/stepb+1);
y=1;
for m=-a:stepa:a
  x=1;
  for n=-b:stepb:b
    z = m+i*n;
    IsGoingToInf = CheckInf(z,100);
    FractalImage(y,x) = IsGoingToInf;
    x=x+1;
  end
  y=y+1;
end

imagesc(FractalImage);